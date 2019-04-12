#include <ros/ros.h>
#include <sound_play/sound_play.h>
#include <unistd.h>
#include <cstring>

int main(int argc, char **argv){
    ros::init(argc, argv, "sound_play");
    ros::NodeHandle nh;
    image_transport::ImageTransport it(nh);
    
    //the second param refer to length of buffer
    ros::Publisher pub = n.advertise<std_msgs::String>("sound", 1000);
    std_msgs::String msg;
    ros::Rate loop_rate(10);
    strcpy(msg.data, argv[1]);
    pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();

    return 0;
}