#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>

#include "face_detection.h"
#include "face_detection/Face.h"
#include "face_detection/FaceArray.h"
#include "face_detection/FaceArrayStamped.h"

seeta::FaceDetection *detector;
ros::Publisher *msg_pub_;

void ImageCallback(const sensor_msgs::ImageConstPtr &msg){
    try{
        cv::Mat img = cv_bridge::toCvShare(msg, "bgr8")->image, img_gray;
        cv::cvtColor(img, img_gray, cv::COLOR_BGR2GRAY);
        seeta::ImageData img_data;
        img_data.data = img_gray.data;
        img_data.width = img_gray.cols;
        img_data.height = img_gray.rows;
        img_data.num_channels = 1;
        std::vector<seeta::FaceInfo> faces = detector->Detect(img_data);

        cv::Rect face_rect;
        int32_t num_face = static_cast<int32_t>(faces.size());

        face_detection::FaceArrayStamped faces_msg;

        for (int32_t i = 0; i < num_face; i++) {

            face_detection::Face face_msg;
            face_msg.face.x = faces[i].bbox.x;
            face_msg.face.y = faces[i].bbox.y;
            face_msg.face.width = faces[i].bbox.width;
            face_msg.face.height = faces[i].bbox.height;
            faces_msg.faces.push_back(face_msg);
            face_rect.x = faces[i].bbox.x;
            face_rect.y = faces[i].bbox.y;
            face_rect.width = faces[i].bbox.width;
            face_rect.height = faces[i].bbox.height;

            cv::rectangle(img, face_rect, CV_RGB(0, 0, 255), 4, 8, 0);
        }
        msg_pub_->publish(faces_msg);
        cv::imshow("Test", img);
        cv::waitKey(1);
    }catch(cv_bridge::Exception &e){
        ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
    }
}

int main(int argc, char **argv){
    ros::init(argc, argv, "Image_subscriber");
    ros::NodeHandle nh;

    detector = new seeta::FaceDetection("/home/wen/rse/catkin_ws/src/face_detection/src/seeta_fd_frontal_v1.0.bin");
    detector->SetMinFaceSize(80);
    detector->SetScoreThresh(2.f);
    detector->SetImagePyramidScaleFactor(0.8f);
    detector->SetWindowStep(4, 4);


    msg_pub_ = new ros::Publisher;
    *msg_pub_ = nh.advertise<face_detection::FaceArrayStamped>("faces", 1);

    cv::namedWindow("");
    cv::startWindowThread();

    image_transport::ImageTransport it(nh);
    image_transport::Subscriber sub = it.subscribe("image", 1, ImageCallback);
    
    ros::spin();
    cv::destroyAllWindows();

    return 0;
}