// DRFI.cpp : Defines the entry point for the console application.
//

#include "SalDRFI.h"
#include <ctime>

#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include "salience/RectArray.h"
#include "salience/Rect.h"
#include "std_msgs/String.h"
#include <vector>

using namespace std;

ros::Publisher *msg_pub_;

SalDRFI *drfi;

cv::Mat *depth_img;

bool swit = 1;

double thres = 0.5;
int f[480*640], x0__[480*640], y0__[480*640], x1__[480*640], y1__[480*640], cnt[480*640];
inline int Find(int x){return f[x]==x?x:f[x]=Find(f[x]);}
void cut(cv::Mat &img, std::vector<BoundingBox> &res){
	const int rows = img.rows, cols = img.cols;
	for(int i = 0; i < rows; i++){
		for(int j = 0; j < cols; j++){
			int idx = i*cols + j;
			f[idx] = idx;
			cnt[idx] = 0;
			x0__[idx] = x1__[idx] = i;
			y0__[idx] = y1__[idx] = j;
		}
	}

	// printf("1\n");

	for(int i = 0; i < rows; i++){
		for(int j = 0; j < cols; j++){
			if(img.at<u_char>(i, j) < 128)continue;
			if(i < rows - 1 && img.at<u_char>(i+1, j) >= 128){
				int x = Find(i*cols + j), y = Find((i+1)*cols + j);
				if(x != y)f[x] = y;
			}
			if(j < cols - 1 && img.at<u_char>(i, j+1) >= 128){
				int x = Find(i*cols + j), y = Find(i*cols + j + 1);
				if(x != y)f[x] = y;
			}
		}
	}

	
	// printf("2\n");

	for(int i = 0; i < rows; i++){
		for(int j = 0; j < cols; j++){
			int fa = Find(i*cols + j);
			// if(fa == i*cols + j && img.at<u_char>(i, j) >= 128)printf("%d %d %d %d %d\n", i, j, fa/cols, fa%cols, img.at<u_char>(i, j));
			x0__[fa] = min(i, x0__[fa]);
			y0__[fa] = min(j, y0__[fa]);
			x1__[fa] = max(i, x1__[fa]);
			y1__[fa] = max(j, y1__[fa]);
			cnt[fa]++ ;
		}
	}

	
	// printf("3\n");
	for(int i = 0; i < rows*cols; i++){
		if(img.at<u_char>(i/cols, i%cols) >= 128 && Find(i) == i && cnt[i] > 400)
			res.push_back(BoundingBox(x0__[i], y0__[i], x1__[i], y1__[i]));
	}
	// printf("%d\n", res.size());
}

void ImageCallback(const sensor_msgs::ImageConstPtr &msg){
	//if(!depth_img)return;
	if(!swit)return;
    cv::Mat img = cv_bridge::toCvShare(msg, "bgr8")->image, img_gray;
	auto im = img.clone();
	const int rows = img.rows, cols = img.cols;
	printf("%d %d\n", rows, cols);
	cv::resize(img, img, cv::Size(300, 300));
	cv::Mat sal1f = drfi->getSalMap(img);
	// ros::Duration(3.0).sleep();

	cv::resize(sal1f, sal1f, cv::Size(cols, rows));
	cv::resize(img, img, cv::Size(cols, rows));

	cv::Mat binary;
	// cv::imwrite("Saliency.jpg", sal1f);
	
	// cv::imshow("Saliency", sal1f);
	// cv::waitKey(0);
	sal1f.convertTo(binary, CV_8UC1);

    cv::threshold(binary, binary, thres, 255, cv::THRESH_BINARY);

	vector<BoundingBox> boxes;
	cut(binary, boxes);
	printf("%d\n", boxes.size());

	salience::RectArray targets;

	// FILE *f = fopen("/home/wen/rse/catkin_ws/tmp/targets.txt", "w");
	for(auto box:boxes){
		salience::Rect tmp;
		tmp.y0 = box.x0;
		tmp.x0 = box.y0;
		tmp.y1 = box.x1;
		tmp.x1 = box.y1;
		const int x = (tmp.x0 + tmp.x1) / 2;
		const int y = (3*tmp.y0 + tmp.y1) / 4;
		printf("%d %d\n", x, y);
		// printf("%d %d\n", tmp.x, tmp.y);

		// fprintf(f, "%d %d\n", tmp.x, tmp.y);
		targets.bboxes.push_back(tmp);
	}
	if(targets.bboxes.size())msg_pub_->publish(targets);

	// cv::imwrite("Image.jpg", img);
	// cv::imwrite("Binary.jpg", binary);
	// for(auto box:boxes){
	// 	salience::Rect tmp;
	// 	tmp.y0 = box.x0;
	// 	tmp.x0 = box.y0;
	// 	tmp.y1 = box.x1;
	// 	tmp.x1 = box.y1;
	// 	cv::rectangle(im, cvPoint(box.y0, box.x0), cvPoint(box.y1, box.x1), Scalar(255, 0, 0), 3);
	// }
	// cv::imwrite("Detection.jpg", im);
	// cv::imshow("Binary", binary);
	// cv::waitKey(0);
}

void CtrlCallback(const std_msgs::String &msg){
    if(!swit && !strcmp(msg.data.c_str(), "robot start get coat")){
        swit = 1;
    }
}
// void DepthCallback(const sensor_msgs::ImageConstPtr &msg){
// 	if(!depth_img)depth_img = new cv::Mat;
// 	*depth_img = cv_bridge::toCvShare(msg, "mono8")->image;
// }

int main(int argc, char **argv){

	// if(argc > 1)sscanf(argv[1], "%f", thres);

    ros::init(argc, argv, "Salience");
    ros::NodeHandle nh;

    auto swit_scb = nh.subscribe("control_command", 1, CtrlCallback);

    msg_pub_ = new ros::Publisher;
    *msg_pub_ = nh.advertise<salience::RectArray>("Object", 1);
	ros::Duration(3.0).sleep();

	drfi = new SalDRFI;
	drfi->load( "/home/wen/rse/catkin_ws/src/salience/drfiModelCpp.data" );		// http://jianghz.com/drfi/drfiModelCpp.data

    // cv::namedWindow("Saliency");
    // cv::namedWindow("Binary");
    // cv::startWindowThread();

	// pub = nh.advertise<salience::pixel_index>("pixel_index", 1, 52428800);

    image_transport::ImageTransport it(nh);
    image_transport::Subscriber bgr_sub = it.subscribe("/astra/rgb/image_raw", 1, ImageCallback);

    // auto spinner = ros::MultiThreadedSpinner(3);
    // spinner.spin();

    // auto depth_sub = nh.subscribe("/astra/depth/points", 1, DepthCallback);
    // auto spinner = ros::MultiThreadedSpinner(3);

	// spinner.spin();
    // image_transport::Subscriber sub = it.subscribe("image", 1, ImageCallback);
    // for(int i = 0; i < 3; i++)
	//     ros::spinOnce();
    // cv::destroyAllWindows();
	ros::spin();

    return 0;
}