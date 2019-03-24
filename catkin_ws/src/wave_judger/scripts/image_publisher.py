import cv2
import rospy
from sensor_msgs.msg import Image
import numpy as numpy
from cv_bridge import CvBridge, CvBridgeError
import sys

def PublishImages():
    rospy.init_node('image_publisher', anonymous=True)
    img_pub = rospy.Publisher('camera/image', Image, queue_size=1)
    rate = rospy.Rate(20)

    cap = cv2.VideoCapture(0)
    bridge = CvBridge()

    while not rospy.is_shutdown():
        ret, frame = cap.read()

        if ret == 0:
            break
        
        msg = bridge.cv2_to_imgmsg(frame, encoding='bgr8')
        img_pub.publish(msg)
        rate.sleep()

if __name__ == "__main__":
    try:
        PublishImages()
    except rospy.ROSInterruptException:
        pass