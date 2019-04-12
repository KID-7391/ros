#include <ros/ros.h>
#include <iostream>
#include <cstring>
#include "std_msgs/String.h"
#include <sound_play/sound_play.h>
#include <unistd.h>

sound_play::SoundClient *sc;

void SoundCallback(const std_msgs::String::ConstPtr &msg){
    printf("Saying: %s\n", msg->data.c_str());
    sc->say(msg->data.c_str());
}

int main(int argc, char **argv){
    ROS_INFO("Subscriber ready.");

    ros::init(argc, argv, "sound_subscriber");
    ros::NodeHandle nh;
    sc = new sound_play::SoundClient;
    ros::Subscriber sub = nh.subscribe<std_msgs::String>("sound", 1000, SoundCallback);
    
    ros::spin();

    return 0;
}