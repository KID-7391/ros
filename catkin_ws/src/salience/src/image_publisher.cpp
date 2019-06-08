#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/opencv.hpp>
#include <cv_bridge/cv_bridge.h>

int main(int argc, char **argv){
    ros::init(argc, argv, "image");
    ros::NodeHandle nh;
    image_transport::ImageTransport it(nh);
    
    //the second param refer to length of buffer
    image_transport::Publisher pub = it.advertise("/astra/rgb/image_raw", 1);
    // cv::Mat image = cv::imread(argv[1], CV_LOAD_IMAGE_COLOR);
    sensor_msgs::ImagePtr msg;
    ros::Rate loop_rate(1);

    cv::Mat img;
    while (nh.ok()){
	    img = cv::imread("/home/wen/rse/catkin_ws/src/salience/src/test.jpeg");
	    cv::resize(img, img, cv::Size(640, 480));
        msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", img).toImageMsg();
        pub.publish(msg);
            
        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}