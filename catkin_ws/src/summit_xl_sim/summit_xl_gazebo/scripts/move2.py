#!/usr/bin/env python

import rospy
import tf2_ros
import tf_conversions
import cv2
import random
import math
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

PI = 3.1415926535897

bridge = CvBridge()

greenLocationY = 400

depth = 0

centerPoint = 0

state = 1

class movement :

	def __init__(self):
		rospy.init_node('move_robot_node', anonymous=False)
		self.pub_move = rospy.Publisher("/robot/cmd_vel",Twist,queue_size=10)
		self.move = Twist()

	def publish_vel(self):
		self.pub_move.publish(self.move)

	def move_forward(self):
		self.move.linear.x=0.2
		self.move.angular.z=0.0

	def move_backward(self):
		self.move.linear.x=-0.5
		self.move.angular.z=0.0

	def turn(self):
		turnSpeed = random.uniform(4.28, 7.28)
		leftOrRight = random.choice([-1, 1])
		turnSpeed = turnSpeed*leftOrRight
		self.move.linear.x=0.0
		self.move.angular.z=turnSpeed #should turn 180 based on rate 2 in main

	def stop(self):
		self.move.linear.x=0
		self.move.angular.z=0.0
		
	def spiral(self):
		global depth
		rate = rospy.Rate(0.5)
		forwardSpeed = 0.2
		turnSpeed = 1.0
		print("GOT HERE")
		
		while depth > 0.8:
			
			rospy.Subscriber('/robot/front_rgbd_camera/depth/image_raw', Image, cb_depthImage)
			self.move.linear.x=forwardSpeed
			self.move.angular.z=turnSpeed
			
			mov.publish_vel()
			
			forwardSpeed += 0.1
			
			rospy.loginfo('Depth of point is %s m',depth)
			print("SPIRAL")
			
			rate.sleep()

def centerPoint():
	global centerPoint, state
	print("Let's move your robot")
	centerPoint = input("Input distance to center point:")
	
	rate = rospy.Rate(2)
	startTime = rospy.get_time()
	rospy.loginfo('startTime is %s',startTime)
	endTime = rospy.get_time() - startTime
	mov.move_forward()
	
	while endTime < centerPoint/0.2:
		endTime = rospy.get_time() - startTime
		rospy.loginfo('endTime is %s',endTime)
		mov.publish_vel()
		rate.sleep()
	state = 2

def cb_depthImage(image):
	global bridge, y, depth
	y = int(greenLocationY)

	# image msg obtained from callback message for topic
	try:
			cv_image = bridge.imgmsg_to_cv2(image, "32FC1")
			# where x,y is the centre point from the published moment
			for i in range(256, 384, 64):
				depth = cv_image[y][i]
				#rospy.loginfo('Depth of point is %s m',depth)
				
				avoid_depth()
				
				#if depth < 1.0:
				#	rospy.loginfo('Depth less then 1, too close')
				# For testing/verification:
				cv2.circle(cv_image, (i,y), 10, 255) # draw circle radius 10 at x,y
				cv2.imshow("Image window", cv_image) # display the image
				cv2.waitKey(3)
	except CvBridgeError as e:
		print(e)

def avoid_depth():
	global depth, state
	
	if state == 1:
		rospy.loginfo('Moving to center point')
			
	elif state == 2:
		if depth < 0.8 or math.isnan(depth):
			rospy.loginfo('Depth less then 80cm, too close, turning')
			state = 3
			mov.turn()
		else:
			rospy.loginfo('Depth greater then 80cm, free to move, SPIRALING')
			mov.spiral()
			
	elif state == 3:
		if depth < 0.8 or math.isnan(depth):
			rospy.loginfo('Depth less then 80cm, too close, turning')
			mov.turn()
		else:
			rospy.loginfo('Depth greater then 80cm, free to move')
			mov.move_forward()


if __name__ == "__main__":

	mov = movement()
	centerPoint()
	rospy.Subscriber('/robot/front_rgbd_camera/depth/image_raw', Image, cb_depthImage)
	rate = rospy.Rate(2)
	
	while not rospy.is_shutdown():
		
		mov.publish_vel()
		rate.sleep()
