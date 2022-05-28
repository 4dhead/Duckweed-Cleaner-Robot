#!/usr/bin/env python
#example based on cv_bridge tutorials
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from geometry_msgs.msg import Twist
import rospy
import tf2_ros
import tf_conversions
import cv2

bridge = CvBridge()

greenLocationX = 320
greenLocationY = 420

depth = 0

centerPoint = 0

def centerPoint():
	global centerPoint
	print("Let's move your robot")
	centerPoint = input("Input distance to center point:")

def cb_depthImage(image):
	global bridge, x, y, depth
	x = int(greenLocationX)
	y = int(greenLocationY)
	rospy.loginfo('x %s',x)
	rospy.loginfo('y %s',y)

	# image msg obtained from callback message for topic
	try:
			cv_image = bridge.imgmsg_to_cv2(image, "32FC1")
			# where x,y is the centre point from the published moment
			depth = cv_image[y][x]
			rospy.loginfo('Depth of point is %s m',depth)
			avoid_depth()
			#if depth < 1.0:
			#	rospy.loginfo('Depth less then 1, too close')
			# For testing/verification:
			cv2.circle(cv_image, (x,y), 10, 255) # draw circle radius 10 at x,y
			cv2.imshow("Image window", cv_image) # display the image
			cv2.waitKey(3)
	except CvBridgeError as e:
		print(e)

def avoid_depth():
	global depth

	velocity_publisher = rospy.Publisher('/robot/cmd_vel', Twist, queue_size=1000)
	vel_msg = Twist()
	
	if depth < 0.6:
		rospy.loginfo('Depth less then 60cm, too close')
		vel_msg.linear.x = 0
		#turn away
		#vel_msg.linear.x = 1
	else:
		rospy.loginfo('Depth greater then 60cm, free to move')
		vel_msg.linear.x = 1

if __name__ == '__main__':
	# Initialise the ROS system and become a node
	centerPoint()
	rospy.init_node('depthTest', anonymous=False)
	rospy.Subscriber('/robot/front_rgbd_camera/depth/image_raw', Image, cb_depthImage)
	
	rospy.spin()
