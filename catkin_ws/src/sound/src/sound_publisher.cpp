#include <ros/ros.h>
#include <iostream>
#include <cstring>
#include "std_msgs/String.h"

int main(int argc, char **argv){
    ros::init(argc, argv, "sound_publisher");
    ros::NodeHandle nh;
    
    //the second param refer to length of buffer
    ros::Publisher pub = nh.advertise<std_msgs::String>("sound", 1000);
    // cv::Mat image = cv::imread(argv[1], CV_LOAD_IMAGE_COLOR);
    std_msgs::String msg;
    std::stringstream ss;
    ros::Rate loop_rate(10);

    char buff[1000];
    printf("Input string to say.\n");
    while (nh.ok()){
        if (std::cin.getline(buff, 1000) && strlen(buff)){
            ss << buff;
            msg.data = ss.str();
            pub.publish(msg);
        }
        ros::spinOnce();
        loop_rate.sleep();
    }           

    return 0;
}