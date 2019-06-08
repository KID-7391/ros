#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/opencv.hpp>
#include <cv_bridge/cv_bridge.h>

#include "salience/targets_array.h"
#include "salience/pixel_index.h"

void Call(const salience::targets_array::ConstPtr &msg){
    printf("??????????");
    printf("%d\n", msg->targets.size());
}


int main(int argc, char **argv){
    ros::init(argc, argv, "test");
    ros::NodeHandle nh;
    // image_transport::ImageTransport it(nh);
    
    //the second param refer to length of buffer
    // image_transport::Publisher pub = it.advertise("/astra/rgb/image_raw", 1);
    // cv::Mat image = cv::imread(argv[1], CV_LOAD_IMAGE_COLOR);
    // sensor_msgs::ImagePtr msg;
    // ros::Rate loop_rate(1);

    auto sub = nh.subscribe("/targets_array", 1, Call);

    ros::spin();

    return 0;
}