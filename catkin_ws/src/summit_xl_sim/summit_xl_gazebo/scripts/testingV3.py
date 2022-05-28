#!/usr/bin/env python
import roslib
import rospy

from nav_msgs.msg import Odometry

x = 0
y = 0

radius = 0

previousCoordinateX = 0
previousCoordinateY = 0

def cb_odom(msg):

	global x,y
	x = msg.pose.pose.position.x
	y = msg.pose.pose.position.y

def percentageCover():
	global x, y, mapArray, previousCoordinateX, previousCoordinateY, radius

	currentCoordinateX = (x+radius) #adding radius so we can accurately state position at start
	currentCoordinateY = (y+radius)
	
	currentCoordinateX = round(currentCoordinateX) #rounding values for when they are used in array
	currentCoordinateY = round(currentCoordinateY)
	x = round(x)
	y = round(y)
	
	rospy.loginfo('(X is %s) (Y is %s)',(x+radius),(y+radius))
	rospy.loginfo('(currentCoordinateX is %s) (currentCoordinateY is %s)',currentCoordinateX,currentCoordinateY)
	
	if currentCoordinateX == previousCoordinateX and currentCoordinateY == previousCoordinateY:
		print("In same coordinate, nothing to do")
	else:
		print(mapArray[int(currentCoordinateY)][int(currentCoordinateX)])
		try:
			mapArray[int(currentCoordinateY)][int(currentCoordinateX)]=1
		except:
			print("out of bounds")
		#print(mapArray)
		#PreviousCoordinate updated to log where we are
		previousCoordinateX = currentCoordinateX
		previousCoordinateY = currentCoordinateY

	totalCountMissed = sum(i.count(0) for i in mapArray) - (((radius*4)**2) - 3.14*(radius ** 2)) #if bug with second "ghost" robot is fixed change radius*4 -> radius*2
	#print(totalCountMissed)
	print(sum(i.count(1) for i in mapArray))
	#print(mapArray.count(0))
	#rospy.loginfo("Percentage of missed squares: %f", ((float(totalCountMissed)/float(3.14*(radius ** 2)))*100))
	rospy.loginfo("Percentage of completed squares: %f", (((float(sum(i.count(1) for i in mapArray)))/float(3.14*(radius ** 2)))*100)) ##if bug with second "ghost" robot is fixed remove the divison by 2 for the numerator (float(sum(i.count(1) for i in mapArray))/2) as it is currently halving explored squares value

if __name__ == "__main__":
	rospy.init_node('odometry', anonymous=True) #make node 
	rospy.Subscriber('/robot/robotnik_base_control/odom',Odometry,cb_odom)
	rate = rospy.Rate(20)
	
	radius = input("Input radius of pond: ")
	rows, cols = (radius*2, radius*2) #if bug with second "ghost" robot is fixed change radius*4 -> radius*2
	mapArray = [ [ 0 for i in range(rows) ] for j in range(cols) ] # construct 2D array for calcuating where we have been
	print(mapArray)

	while not rospy.is_shutdown():
		
		percentageCover()
		rate.sleep()
