#!/usr/bin/env python

import rospy
import cv2
import random
import math
from sensor_msgs.msg import NavSatFix
from sensor_msgs.msg import Image
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Twist
from cv_bridge import CvBridge, CvBridgeError

bridge = CvBridge()

depthHeightInImage = 400

depth = 1

initialLatitude = 0

initialLongitude = 0

latitude = 0

longitude = 0

centerPoint = 0

xOdom = 0

yOdom = 0

timeToCompletion = 0

linearSpeed = 1.0

class movement :

	def __init__(self):
		rospy.init_node('move_robot_node', anonymous=False)
		self.pub_move = rospy.Publisher("/robot/cmd_vel",Twist,queue_size=10)
		self.move = Twist()

	def publish_vel(self):
		self.pub_move.publish(self.move)

	def robot_forward(self):
		global linearSpeed
		self.move.linear.x=linearSpeed
		self.move.angular.z=0.0

	def robot_backward(self):
		self.move.linear.x=-0.5
		self.move.angular.z=0.0

	def robot_avoid(self):
		turnSpeed = random.uniform(4.71, 7.85) #determines turn speed and therefore angle
		leftOrRight = random.choice([-1, 1]) #determines left or right
		turnSpeed = turnSpeed*leftOrRight
		self.move.linear.x=0.5
		self.move.angular.z=turnSpeed #should turn 180 based on rate 2 in main

	def robot_stop(self):
		self.move.linear.x=0.0
		self.move.angular.z=0.0

	def robot_spiral(self):
		global depth
		rate = rospy.Rate(10)
		forwardSpeed = 0.2
		turnSpeed = 1.0
		
		rospy.loginfo('Depth of point is %s m',depth)
		
		while depth > 0.8:
			
			self.move.linear.x=forwardSpeed
			self.move.angular.z=turnSpeed
			
			rospy.loginfo('Depth of point is %s m',depth)
			rospy.loginfo('speed is %f', forwardSpeed)
			
			moveRobot.publish_vel()
			
			forwardSpeed += 0.005 #change to modify rate of spiral expansion, lower will make for greater coverage
			
			rate.sleep()

def intial_gps_coords():
	global latitude, longitude, initialLatitude, initialLongitude

	initialLatitude = latitude

	initialLongitude = longitude

	rospy.loginfo('initial latitude is %s',initialLatitude)
	rospy.loginfo('initial longitude is %s',initialLongitude)

def count_down_timer_initialize():
	global timeToCompletion
	
	timeToCompletion = input("Input time to run for in seconds:")
	rospy.loginfo('Time to completion: %s',timeToCompletion)

def center_point():
	global centerPoint, depth
	print("Cajun Commander cleaner go!")
	centerPoint = input("Input distance to center point:")
	
	rate = rospy.Rate(2)
	startTime = rospy.get_time()
	rospy.loginfo('startTime is %s',startTime)
	endTime = rospy.get_time() - startTime
	moveRobot.robot_forward()
	
	while endTime < centerPoint/linearSpeed:
		endTime = rospy.get_time() - startTime
		rospy.loginfo('endTime is %s',endTime)
		moveRobot.publish_vel()
		rate.sleep()

def cb_depthImage(image):
	global bridge, y, depth
	y = int(depthHeightInImage)

	# image msg obtained from callback message for topic
	try:
			cv_image = bridge.imgmsg_to_cv2(image, "32FC1")
			# where x,y is the centre point from the published moment
			for i in range(256, 384, 64):
				depth = cv_image[y][i]
				#rospy.loginfo('Depth of point is %s m',depth)
				
				avoid_depth()
				
				# For testing/verification:
				cv2.circle(cv_image, (i,y), 10, 255) # draw circle radius 10 at x,y
				cv2.imshow("Image window", cv_image) # display the image
				cv2.waitKey(3)
	except CvBridgeError as e:
		print(e)

def cb_gps(data):
	
	global longitude, latitude
	
	#rospy.loginfo("Longitude: %f, Latitude %f" % (data.longitude, data.latitude))
	longitude = data.longitude
	latitude = data.latitude

def cb_odom(msg):
	global x,y
	
	#rospy.loginfo("X: %f, Y %f" % (msg.pose.pose.position.x, msg.pose.pose.position.y))
	xOdom = msg.pose.pose.position.x
	yOdom = msg.pose.pose.position.y

def avoid_depth():
	global depth
	
	if depth < 0.8 or math.isnan(depth):
		#rospy.loginfo('Depth less then 80cm, too close')
		moveRobot.robot_avoid()
	else:
		#rospy.loginfo('Depth greater then 80cm, free to move')
		moveRobot.robot_forward()

if __name__ == "__main__":
	moveRobot = movement()

	rospy.Subscriber('/robot/gps/fix', NavSatFix, cb_gps)
	
	rospy.Subscriber('/robot/front_rgbd_camera/depth/image_raw', Image, cb_depthImage)
	
	rospy.Subscriber('/robot/robotnik_base_control/odom', Odometry, cb_odom)

	rospy.sleep(1) #sleep to allow for time to get gps/odom data
	
	intial_gps_coords()
	
	count_down_timer_initialize()
	
	startTime = rospy.get_time()
	
	center_point()
	rate = rospy.Rate(2)
	
	moveRobot.robot_spiral()
	
	while not rospy.is_shutdown():
		endTime = rospy.get_time() - startTime
		
		if endTime > timeToCompletion:
			#return to pump
			rospy.loginfo('return home')
			moveRobot.robot_stop()
			moveRobot.publish_vel()
			#startTime = rospy.get_time()
		else:
			rospy.loginfo('depth is %s, timer is %s',depth, endTime)
			moveRobot.publish_vel()
		rate.sleep()
