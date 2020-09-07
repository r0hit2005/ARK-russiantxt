#!/usr/bin/env python3
import cv2
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge

def callback(data):
    bridge = CvBridge()
    img_msg = data.data

    img = bridge.imgmsg_to_cv2(img_msg, desired_encoding='passthrough')
    img = data.data
    
    cv2.imshow(img)
    cv2.waitKey(1)
    
    #result = None 
    #pub = rospy.Publisher('detection_result', result, queue_size = 100)
    #pub.publish(result)


def detection():
    rospy.init_node('detection', anonymous = True)
    rospy.Subscriber('videofeed', Image, callback)
    rospy.spin()

if __name__ == '__main__':
    detection()
