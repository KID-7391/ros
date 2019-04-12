import cv2
import rospy
from sensor_msgs.msg import Image
import numpy as numpy
from cv_bridge import CvBridge, CvBridgeError
import sys

from detect import detectFace

from sound_play.msg import SoundRequest
from sound_play.libsoundplay import SoundClient

def ImageCallback(msg):
    global bridge
    global sc
    global cnt_call
    try:
        img = bridge.imgmsg_to_cv2(msg, 'bgr8')
        boxes = detectFace(img, threshold=[0.6, 0.6, 0.7])
        cnt = len(boxes)
        
        for box in boxes:
            x0, y0, x1, y1 = box[:4]
            cv2.rectangle(img, (int(x0), int(y0)), (int(x1), int(y1)), (255, 0, 0), 3)
        rospy.loginfo('detected %d people.'%(cnt))
        
        if cnt_call % 20 == 0:
            sc.say('detected %d people'%(cnt))

        cv2.imshow('', img)
        cv2.waitKey(1)
    except:
        print("Could not convert from '%s' to 'bgr8'." % str(msg.encoding))
    
    cnt_call += 1

def SubscribImages():
    global cnt_call
    cnt_call = 0
    global bridge
    bridge = CvBridge()

    rospy.init_node('image_subscriber', anonymous=True)
    global sc
    sc = SoundClient()
    rospy.Subscriber('camera/image', Image, ImageCallback)
    rospy.spin()

if __name__ == "__main__":
    SubscribImages()
