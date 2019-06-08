#ifndef WAVE_JUDGER_HPP
#define WAVE_JUDGER_HPP
#include "utils.hpp"

class WaveJudger{
    op::Wrapper opWrapper{op::ThreadManagerMode::Asynchronous};
    void forward(const cv::Mat &img, std::shared_ptr<std::vector<std::shared_ptr<op::Datum>>> &res);
    void IsWaving(op::Array<float> &kps, bool is_waving[]);
public:
    WaveJudger(){init();}
    void init();
    void IsWaving(const cv::Mat &img, bool is_waving[], 
        std::shared_ptr<std::vector<std::shared_ptr<op::Datum>>> &datum);
    int FindWaving(const cv::Mat &img, float bbox[][4], bool swit,
        std::shared_ptr<std::vector<std::shared_ptr<op::Datum>>> &datum);
    int FindWaving(const cv::Mat &img, float bbox[][4], bool swit);
    void vis(const cv::Mat &img, bool swit);
};
#endif //WAVE_JUDGER_HPP