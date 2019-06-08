#include <ros/ros.h>
#include <opencv2/opencv.hpp>
#include "test.hpp"
#include "OpenPose/Rect.h"
#include "OpenPose/RectArray.h"

const float fx_ = 536.88, fy_ = 548.90, u0_ = 324.38, v0_ = 256.58;
const float inv_fx_ = 1./fx_, inv_fy_ = 1./fy_;

cv::Mat *depth=nullptr, *bgr=nullptr;

void GetDepth(const sensor_msgs::ImageConstPtr &msg){
    if(depth == nullptr)depth = new cv::Mat;
    *depth = cv_bridge::toCvShare(msg, sensor_msgs::image_encodings::TYPE_32FC1)->image;
}

void GetBGR(const sensor_msgs::ImageConstPtr &msg){
    if(bgr == nullptr)bgr = new cv::Mat;
    *bgr = cv_bridge::toCvShare(msg, "bgr8")->image;
}

cv::Point3f Pixel2ImagePlane(int u, int v){
    float x = 1.*(u-u0_) * inv_fx_;
    float y = 1.*(v-v0_) * inv_fy_;
    return cv::Point3f(x, y, 1.);
}

cv::Point3f Depth2World(int u, int v, float depth){
    return Pixel2ImagePlane(u, v)*depth;
}

void Call(const OpenPose::RectArray::ConstPtr &msg){
    OpenPose::RectArray bboxes = *msg;
    OpenPose::Rect rect;
    // for(int i = 0; i < bboxes.bboxes.size(); i++){
    //     ROS_INFO("%.2f %.2f %.2f %.2f", bboxes.bboxes[i].x0, bboxes.bboxes[i].y0, 
    //     bboxes.bboxes[i].x1, bboxes.bboxes[i].y1);
    // }
    if(depth == nullptr || bgr == nullptr)return;
    float x_c = (bboxes.bboxes[0].x0 + bboxes.bboxes[0].x1) / 2.;
    float y_c = (bboxes.bboxes[0].y0 + bboxes.bboxes[0].y1) / 2.;
    ROS_INFO("%.2f %.2f %.2f", x_c, y_c, depth->at<float>(int(x_c), int(y_c)));
    cv::circle(*depth, cv::Point(int(x_c), int(y_c)), 3, (255, 255, 0));
    cv::imshow("depth", *depth);
    cv::imshow("bgr", *bgr);
}

int main(int argc, char **argv){
    ros::init(argc, argv, "Test");
    ros::NodeHandle nh;
    image_transport::ImageTransport it(nh);

    cv::namedWindow("depth");
    cv::namedWindow("bgr");
    cv::startWindowThread();

    image_transport::Subscriber sub_d = it.subscribe("/camera/depth/image_raw", 1, GetDepth);
    image_transport::Subscriber sub_rgb = it.subscribe("/camera/rgb/image_raw", 1, GetBGR);
    ros::Subscriber sub = nh.subscribe("People", 1, Call);

    ros::MultiThreadedSpinner spinner(3);
    spinner.spin();
    
    cv::destroyAllWindows();

    return 0;
}