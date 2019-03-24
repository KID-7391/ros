#include <ros/ros.h>
#include <sound_play/sound_play.h>
#include <unistd.h>

int main(int argc, char **argv){
    ros::init(argc, argv, "sound_play");
    ros::NodeHandle nh;
    image_transport::ImageTransport it(nh);
    
    //the second param refer to length of buffer
    sound_play::
    SoundClient 
    image_transport::Publisher pub = it.advertise("camera/image", 1);
    sensor_msgs::ImagePtr msg;
    ros::Rate loop_rate(10);

    cv::VideoCapture cap(0);
    cv::Mat frame;
    while (nh.ok()){

        ros::spinOnce();
        loop_rate.sleep();
    }           

    return 0;
}