#!/usr/bin/env python  
import roslib
roslib.load_manifest('test_tf')
import rospy
import math
import tf
import turtlesim.msg
import turtlesim.srv
 
if __name__ == '__main__':
    rospy.init_node('tf_turtle')
 
    listener = tf.TransformListener()
 
    rospy.wait_for_service('spawn')
    spawner = rospy.ServiceProxy('spawn', turtlesim.srv.Spawn)
    spawner(4, 2, 0, 'turtle2')
 
    turtle_vel = rospy.Publisher('turtle2/command_velocity', turtlesim.msg.Velocity)
 
    rate = rospy.Rate(10.0)
    while not rospy.is_shutdown():
        try:
            (trans,rot) = listener.lookupTransform('/turtle2', '/turtle1', rospy.Time(0))
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            continue
 
        angular = 4 * math.atan2(trans[1], trans[0])
        linear = 0.5 * math.sqrt(trans[0] ** 2 + trans[1] ** 2)
        turtle_vel.publish(turtlesim.msg.Velocity(linear, angular))
 
        rate.sleep()