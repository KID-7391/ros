#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include "wave_judger.hpp"

WaveJudger wj;

void ImageCallback(const sensor_msgs::ImageConstPtr &msg){
    try{
        wj.vis(cv_bridge::toCvShare(msg, "bgr8")->image);
        // auto img = cv_bridge::toCvShare(msg, "bgr8")->image;
        // cv::imshow("", cv_bridge::toCvShare(msg, "bgr8")->image);
    }catch(cv_bridge::Exception &e){
        ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
    }
}

int main(int argc, char **argv){
    ros::init(argc, argv, "Image_subscriber");
    ros::NodeHandle nh;
    cv::namedWindow("");
    cv::startWindowThread();

    image_transport::ImageTransport it(nh);
    image_transport::Subscriber sub = it.subscribe("camera/image", 1, ImageCallback);
    
    ros::spin();
    cv::destroyAllWindows();

    return 0;
}