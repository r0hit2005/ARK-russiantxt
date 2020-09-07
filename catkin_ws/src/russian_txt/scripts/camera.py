#!/usr/bin/env python 

import cv2
import rospy
from sensor_msgs.msg import Image
from std_msgs.msg import String
import numpy as np
from cv_bridge import CvBridge

def camera():
    pub = rospy.Publisher('videofeed', Image, queue_size=100)
    rospy.init_node('camera', anonymous=True)
    rate = rospy.Rate(30)
    cap = cv2.VideoCapture(0)
    bridge = CvBridge()
    while(True):
        ret, cv_img = cap.read()
        print(cap.read())
      #  img_msg = bridge.cv2_to_imgmsg(cv_img, encoding='passtrhough')
      #  rospy.loginfo(img_msg)
      #  pub.publish(img_msg)
      #  rate.sleep()
      #  cv2.imshow('frame',cv_img)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break
    cap.release()
    cv2.destroyAllWindows()

if __name__ == '__main__':
    try:
        camera()
    except rospy.ROSInterruptException:
        pass
    
