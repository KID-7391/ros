import cv2
import rospy
from sensor_msgs.msg import Image
import numpy as numpy
from cv_bridge import CvBridge, CvBridgeError
import sys

def ImageCallback(msg):
    global bridge

    try:
        cv2.imshow('', bridge.imgmsg_to_cv2(msg, 'bgr8'))
        cv2.waitKey(1)
    except:
        print("Could not convert from '%s' to 'bgr8'." % str(msg.encoding))

def SubscribImages():
    global bridge
    bridge = CvBridge()

    rospy.init_node('image_subscriber', anonymous=True)
    rospy.Subscriber('camera/image', Image, ImageCallback)
    rospy.spin()

if __name__ == "__main__":
    SubscribImages()
