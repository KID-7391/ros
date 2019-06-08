#include <iostream>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>

using namespace std;
// void chatterCallback(const sensor_msgs::LaserScan::ConstPtr& msg){
//     ROS_INFO("%.f", (msg->header).stamp.toSec());
// }
int main(int argc, char **argv){
    ros::init(argc,argv,"pub");
    ros::NodeHandle n;
    ros::Publisher pub=n.advertise<std_msgs::String>("test", 1000);
    ros::Rate loop_rate(10);
    int i = 0;
    while (ros::ok()){
        std_msgs::String msg;
        std::stringstream ss;
        ss << i++;
        msg.data = ss.str();
        pub.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();
    }
    return 0;
}