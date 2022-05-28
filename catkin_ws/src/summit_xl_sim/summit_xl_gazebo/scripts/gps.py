#!/usr/bin/python
import rospy
import click
import math
import actionlib
import tf

from actionlib_msgs.msg import GoalStatus
from geometry_msgs.msg import PoseStamped
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from sensor_msgs.msg import NavSatFix
from sensor_msgs.msg import Imu
from nav_msgs.msg import Odometry

def DMS_to_decimal_format(lat,long):
  # Check for degrees, minutes, seconds format and convert to decimal
  if ',' in lat:
    degrees, minutes, seconds = lat.split(',')
    degrees, minutes, seconds = float(degrees), float(minutes), float(seconds)
    if lat[0] == '-': # check for negative sign
      minutes = -minutes
      seconds = -seconds
    lat = degrees + minutes/60 + seconds/3600
  if ',' in long:
    degrees, minutes, seconds = long.split(',')
    degrees, minutes, seconds = float(degrees), float(minutes), float(seconds)
    if long[0] == '-': # check for negative sign
      minutes = -minutes
      seconds = -seconds
    long = degrees + minutes/60 + seconds/3600

  lat = float(lat)
  long = float(long)
  rospy.loginfo('Given GPS goal: lat %s, long %s.' % (lat, long))
  return lat, long

def get_current_yaw():
  rospy.loginfo("Getting absolute yaw from /imu/data...")
  imu_data = rospy.wait_for_message('/imu/data', Imu)
  imu_quat = [imu_data.orientation.x, imu_data.orientation.y, imu_data.orientation.z, imu_data.orientation.w]
  euler = tf.transformations.euler_from_quaternion(imu_quat)
  curr_abs_yaw = euler[2]
  rospy.loginfo("Received origin yaw: {:.3f} degrees.".format(math.degrees(curr_abs_yaw)))
  rospy.loginfo("Getting current yaw from /odometry/filtered...")
  odometry_data = rospy.wait_for_message('/odometry/filtered', Odometry)
  odometry_quat = [odometry_data.pose.pose.orientation.x, odometry_data.pose.pose.orientation.y, odometry_data.pose.pose.orientation.z, odometry_data.pose.pose.orientation.w]
  euler = tf.transformations.euler_from_quaternion(odometry_quat)
  curr_yaw = euler[2]
  rospy.loginfo("Received current yaw: {:.3f} degrees.".format(math.degrees(curr_yaw)))
  return curr_abs_yaw, curr_yaw

def get_current_x_y():
  # Get the current position from odometry data.
  rospy.loginfo("Getting current position from /odometry/filtered...")
  odometry_data = rospy.wait_for_message('/odometry/filtered', Odometry)
  x = odometry_data.pose.pose.position.x
  y = odometry_data.pose.pose.position.y
  rospy.loginfo('Received start position: x %s, y %s.' % (x, y))
  return x, y
  
def get_current_lat_long():
  # Get the lat long coordinates of our map frame's origin which must be publshed on topic /local_xy_origin. We use this to calculate our goal within the map frame.
  #rospy.loginfo("Waiting for a message to initialize the origin GPS location...")
  #origin_pose = rospy.wait_for_message('local_xy_origin', PoseStamped)
  #curr_lat = origin_pose.pose.position.y
  #curr_long = origin_pose.pose.position.x
  rospy.loginfo("Getting the current GPS location from /gps/fix...")
  gps_pose = rospy.wait_for_message('/robot/gps/fix', NavSatFix)
  curr_lat = gps_pose.latitude
  curr_long = gps_pose.longitude
  rospy.loginfo('Received GPS: lat %s, long %s.' % (curr_lat, curr_long))
  return curr_lat, curr_long

def calc_goal(curr_lat, curr_long, goal_lat, goal_long, curr_abs_yaw, goal_yaw, curr_x, curr_y, curr_yaw):
  # Calculate distance and azimuth between GPS points
  geod = Geodesic.WGS84  # define the WGS84 ellipsoid
  g = geod.Inverse(curr_lat, curr_long, goal_lat, goal_long) # Compute several geodesic calculations between two GPS points 
  hypotenuse = distance = g['s12'] # access distance
  rospy.loginfo("The distance from the current position to the goal is {:.3f} m.".format(distance))
  azimuth = g['azi1']
  rospy.loginfo("The azimuth from the current position to the goal is {:.3f} degrees.".format(azimuth))

  # Convert polar (distance and azimuth) to x,y translation in meters (needed for ROS) by finding side lenghs of a right-angle triangle
  # Convert azimuth to radians
  azimuth = math.radians(azimuth)
  # Add the current yaw to make it relative to the current yaw.  Also change the
  # sign because yaw and azimuth go different ways.
  relativeHeading = - curr_abs_yaw - azimuth
  rospy.loginfo("Relative yaw from robot heading {:.3f} degrees.".format(math.degrees(relativeHeading)))
  # Calculate x,y
  x = adjacent = math.cos(relativeHeading) * hypotenuse
  y = opposite = math.sin(relativeHeading) * hypotenuse
  rospy.loginfo("Translation from the current position to the goal {:.3f}, {:.3f} m.".format(x, y))

  # (x,y) is now relative to the current pose of the robot.  We need to rotate
  # it to align it with the origin frame and then translate it.
  # Rotate by curr_abs_yaw.
  xr = x * math.cos(-curr_yaw) + y * math.sin(-curr_yaw)
  yr = - x * math.sin(-curr_yaw) + y * math.cos(-curr_yaw)
  rospy.loginfo("Rotated goal {:.3f}, {:.3f} m.".format(xr, yr))
  rospy.loginfo("Rotated by {:.3f}deg.".format(math.degrees(-curr_yaw)))
  # Translate by current position.
  xt = xr + curr_x
  yt = yr + curr_y
  rospy.loginfo("The translation from the frame origin is (x,y) {:.3f}, {:.3f} m.".format(xt, yt))

  # Yaw to rotate at the end.
  final_yaw = goal_yaw - curr_abs_yaw + curr_yaw
  rospy.loginfo("Yaw from origin frame {:.3f}deg.".format(math.degrees(final_yaw)))

  return xt, yt, final_yaw

class GpsGoal():
  def __init__(self):
    rospy.init_node('gps_goal')

    rospy.loginfo("Connecting to move_base...")
    self.move_base = actionlib.SimpleActionClient('move_base', MoveBaseAction)
    self.move_base.wait_for_server()
    rospy.loginfo("Connected.")

    rospy.Subscriber('gps_goal_pose', PoseStamped, self.gps_goal_pose_callback)
    rospy.Subscriber('gps_goal_fix', NavSatFix, self.gps_goal_fix_callback)

    rospy.loginfo("Waiting for goal")
    
  def do_gps_goal(self, goal_lat, goal_long, z=0, goal_yaw=0, roll=0, pitch=0):
    # Calculate goal x and y and yaw in the frame_id given the frame's origin GPS
    # and yaw and a goal GPS location and yaw

    # We repeat this until the goal is reached, so that we adapt to drift
    # in odometry.
    cont = True
    while cont:
      # Get the current lat, long.
      self.curr_lat, self.curr_long = get_current_lat_long()
      # Then we get the current yaw.
      self.curr_abs_yaw, self.curr_yaw = get_current_yaw()
      # The then position
      self.x, self.y = get_current_x_y()
      
      # Calculate the goal in the origin frame.
      x, y, final_yaw = calc_goal(self.curr_lat, self.curr_long, goal_lat, goal_long, self.curr_abs_yaw, goal_yaw, self.x, self.y, self.curr_yaw)
      # Create move_base goal and send it
      self.publish_goal(x=x, y=y, z=z, yaw=final_yaw, roll=roll, pitch=pitch)

      end = self.move_base.wait_for_result(rospy.Duration(1.0))
      if end:
        cont = False
        rospy.loginfo("Navigation ended.")
      state = self.move_base.get_state()
      rospy.loginfo("Status: %s" % GoalStatus.to_string(state))

  def gps_goal_pose_callback(self, data):
    latitude = data.pose.position.x
    longitude = data.pose.position.y
    z = data.pose.position.z
    pose_quat = [data.pose.orientation.x, data.pose.orientation.y, data.pose.orientation.z, data.pose.orientation.w]
    euler = tf.transformations.euler_from_quaternion(pose_quat)
    roll = euler[0]
    pitch = euler[1]
    yaw = euler[2]
    rospy.loginfo('Received goal: lat %s, long %s, yaw %s deg.' % (latitude, longitude, math.degrees(yaw)))
    self.do_gps_goal(latitude, longitude, z=z, goal_yaw=yaw, roll=roll, pitch=pitch)

  def gps_goal_fix_callback(self, data):
    rospy.loginfo('Received goal: lat %s, long %s.' % (data.latitude, data.longitude))
    self.do_gps_goal(data.latitude, data.longitude)

  def publish_goal(self, x=0, y=0, z=0, yaw=0, roll=0, pitch=0):
    # Create move_base goal
    goal = MoveBaseGoal()
    goal.target_pose.header.frame_id = rospy.get_param('~frame_id','map')
    goal.target_pose.pose.position.x = x
    goal.target_pose.pose.position.y = y
    goal.target_pose.pose.position.z =  z
    quaternion = tf.transformations.quaternion_from_euler(roll, pitch, yaw)
    goal.target_pose.pose.orientation.x = quaternion[0]
    goal.target_pose.pose.orientation.y = quaternion[1]
    goal.target_pose.pose.orientation.z = quaternion[2]
    goal.target_pose.pose.orientation.w = quaternion[3]
    rospy.loginfo('Executing move_base goal to position (x,y) %s, %s, with %s degrees yaw.' %
            (x, y, yaw))
    #rospy.loginfo("To cancel the goal: 'rostopic pub -1 /move_base/cancel actionlib_msgs/GoalID -- {}'")

    # Send goal
    self.move_base.send_goal(goal)
    rospy.loginfo('Inital goal status: %s' % GoalStatus.to_string(self.move_base.get_state()))
    status = self.move_base.get_goal_status_text()
    if status:
      rospy.loginfo(status)

    # Wait for goal result
    #self.move_base.wait_for_result()
    #rospy.loginfo('Final goal status: %s' % #GoalStatus.to_string(self.move_base.get_state()))
    #status = self.move_base.get_goal_status_text()
    #if status:
    #  rospy.loginfo(status)

@click.command()
@click.option('--lat', prompt='Latitude', help='Latitude')
@click.option('--long', prompt='Longitude', help='Longitude')
@click.option('--roll', '-r', help='Set target roll for goal', default=0.0)
@click.option('--pitch', '-p', help='Set target pitch for goal', default=0.0)
@click.option('--yaw', '-y', help='Set target yaw for goal', default=0.0)
def cli_main(lat, long, roll, pitch, yaw):
  """Send goal to move_base given latitude and longitude

  \b
  Two usage formats:
  gps_goal.py --lat 43.658 --long -79.379 # decimal format
  gps_goal.py --lat 43,39,31 --long -79,22,45 # DMS format
  """
  gpsGoal = GpsGoal();

  # Check for degrees, minutes, seconds format and convert to decimal
  lat, long = DMS_to_decimal_format(lat, long)
  gpsGoal.do_gps_goal(lat, long, roll=roll, pitch=pitch, yaw=yaw)


def ros_main():
  gpsGoal = GpsGoal();
  rospy.spin()

if __name__ == '__main__':
  cli_main()
