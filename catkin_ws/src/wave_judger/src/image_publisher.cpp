#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/opencv.hpp>
#include <cv_bridge/cv_bridge.h>

int main(int argc, char **argv){
    ros::init(argc, argv, "video_transp");
    ros::NodeHandle nh;
    image_transport::ImageTransport it(nh);
    
    //the second param refer to length of buffer
    image_transport::Publisher pub = it.advertise("camera/image", 1);
    // cv::Mat image = cv::imread(argv[1], CV_LOAD_IMAGE_COLOR);
    sensor_msgs::ImagePtr msg;
    ros::Rate loop_rate(10);

    cv::VideoCapture cap(0);
    cv::Mat frame;
    while (nh.ok()){
        cap >> frame;
        if (!frame.empty()){
            msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", frame).toImageMsg();
            pub.publish(msg);
        }
        ros::spinOnce();
        loop_rate.sleep();
    }           

    return 0;
}