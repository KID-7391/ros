#define OPENPOSE_FLAGS_DISABLE_PRODUCER
#include "wave_judger.hpp"
#include "utils.hpp"

void WaveJudger::init(){
    configureWrapper(opWrapper);
    opWrapper.start();
}

void WaveJudger::forward(const cv::Mat &img, 
std::shared_ptr<std::vector<std::shared_ptr<op::Datum>>> &res){
    res = opWrapper.emplaceAndPop(img);
}

void WaveJudger::IsWaving(op::Array<float> &kps, bool is_waving[]){
    const auto n_people = kps.getSize(0);
    for(int i = 0; i < n_people; i++){
        auto Head = gethead(kps, i);
        if(Head.score < 0.05){
            is_waving[i] = false;
            continue;
        }
        Point LWrist(kps[{i, 7, 0}], kps[{i, 7, 1}], kps[{i, 7, 2}]);
        Point LElow(kps[{i, 6, 0}], kps[{i, 6, 1}], kps[{i, 6, 2}]);
        Point LShoulder(kps[{i, 5, 0}], kps[{i, 5, 1}], kps[{i, 5, 2}]);
        Point RWrist(kps[{i, 4, 0}], kps[{i, 4, 1}], kps[{i, 4, 2}]);
        Point RElow(kps[{i, 3, 0}], kps[{i, 3, 1}], kps[{i, 3, 2}]);
        Point RShoulder(kps[{i, 2, 0}], kps[{i, 2, 1}], kps[{i, 2, 2}]);

        if(LWrist.score > 0.05 && LElow.score > 0.05 && LShoulder.score > 0.05 &&
                IsWavingLeft(Head, LWrist, LElow, LShoulder))
            is_waving[i] = true;
        else if(RWrist.score > 0.05 && RElow.score > 0.05 && RShoulder.score > 0.05 &&
                IsWavingRight(Head, RWrist, RElow, RShoulder))
            is_waving[i] = true;
        else
            is_waving[i] = false;
    }
}

void WaveJudger::IsWaving(const cv::Mat &img, bool is_waving[], 
        std::shared_ptr<std::vector<std::shared_ptr<op::Datum>>> &datum){
    forward(img, datum);
    auto kps = datum->at(0)->poseKeypoints;
    IsWaving(kps, is_waving);
}

int WaveJudger::FindWaving(const cv::Mat &img, float bbox[][4],
        std::shared_ptr<std::vector<std::shared_ptr<op::Datum>>> &datum){
    const auto height = img.rows;
    const auto width = img.cols;
    bool is_waving[100];
    IsWaving(img, is_waving, datum);
    auto kps = datum->at(0)->poseKeypoints;
    const auto n_people = kps.getSize(0);
    const auto n_parts = kps.getSize(1);

    int cnt = 0;
    for(int person = 0; person < n_people; person++){
        if(is_waving[person]){
            float x0 = width, y0 = height, x1 = 0, y1 = 0;
            for(int part = 0; part < n_parts; part++){
                if(kps[{person, part, 2}] < 0.05)continue;
                x0 = std::min(kps[{person, part, 0}], x0);
                x1 = std::max(kps[{person, part, 0}], x1);
                y0 = std::min(kps[{person, part, 1}], y0);
                y1 = std::max(kps[{person, part, 1}], y1);
            }
            bbox[person][0] = x0;
            bbox[person][1] = y0;
            bbox[person][2] = x1;
            bbox[person][3] = y1;
            cnt++;
        }
    }
    return cnt;
}

void WaveJudger::vis(const cv::Mat &img){
    std::shared_ptr<std::vector<std::shared_ptr<op::Datum>>> datum;
    float bbox[100][4];
    int cnt = FindWaving(img, bbox, datum);
    auto im = datum->at(0)->cvOutputData;
    for(int i = 0; i < cnt; i++){
        int x0 = bbox[i][0], y0 = bbox[i][1], x1 = bbox[i][2], y1 = bbox[i][3];
        cv::rectangle(im, cvPoint(x0, y0), cvPoint(x1, y1), cv::Scalar(255,0,0));
    }
    cv::imshow("", im);
    // cv::waitKey(1);
}