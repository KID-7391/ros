#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include "wave_judger.hpp"
#include "OpenPose/Rect.h"
#include "OpenPose/RectArray.h"
#include "std_msgs/String.h"

WaveJudger wj;
ros::Publisher *msg_pub_;
cv::Mat *dep_img = NULL;

int succ = -10;
bool swit = 0;

void ImageCallback(const sensor_msgs::ImageConstPtr &msg){
	// if(!dep_img || succ == 0)return;
    // if(succ == 0)return;
    try{
        // cv::Mat *depth = new cv::Mat;
        // *depth = cv_bridge::toCvShare(msg, "bgr8")->image;//sensor_msgs::image_encodings::TYPE_32FC1)->image;
        // cv::imshow("", *depth);
        // cv::waitKey(0);
        // printf("get msgs.\n");
        auto img = cv_bridge::toCvShare(msg, "bgr8")->image;
        float box[20][4];
        int n_box = wj.FindWaving(img, box, swit);
        OpenPose::RectArray bboxes;
        OpenPose::Rect rect;
        // printf("Get");
        if(n_box > 0){
            // printf("Sending");
            for(int i = 0; i < n_box; i++){
                rect.x0 = box[i][0];
                rect.y0 = box[i][1];
                rect.x1 = box[i][2];
                rect.y1 = box[i][3];
                bboxes.bboxes.push_back(rect);
            }
            // for(int j = 0; j < 10; j++){
                msg_pub_->publish(bboxes);
            // }
            succ++;// = true;
        }
        wj.vis(cv_bridge::toCvShare(msg, "bgr8")->image, swit);
    }catch(cv_bridge::Exception &e){
        ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
    }
}

// void DImageCallback(const sensor_msgs::ImageConstPtr &msg){
//     if(!dep_img)dep_img = new cv::Mat;
//     dep_img = cv_bridge::toCvShare(msg, "mono8")->image;
// }

// void CtrlCallback(const std_msgs::String &msg){
//     if(!swit && !strcmp(msg.data.c_str(), "go back to the serve place")){
//         swit = 1;
//         succ = -10;
//     }
// }
// robot start get coat
int main(int argc, char **argv){
    ros::init(argc, argv, "Image_subscriber");
    ros::NodeHandle nh;

    // auto swit_scb = nh.subscribe("control_command", 1, CtrlCallback);
    
    msg_pub_ = new ros::Publisher;
    *msg_pub_ = nh.advertise<OpenPose::RectArray>("People", 1);
    cv::namedWindow("");
    cv::startWindowThread();

    image_transport::ImageTransport it(nh);
    image_transport::Subscriber sub = it.subscribe("/astra/rgb/image_raw", 1, ImageCallback);

    // image_transport::Subscriber sub_d = it.subscribe("/camera/depth/image_raw", 1, DImageCallback);
    
    auto spinner = ros::MultiThreadedSpinner(3);
    spinner.spin();
    
    cv::destroyAllWindows();

    return 0;
}