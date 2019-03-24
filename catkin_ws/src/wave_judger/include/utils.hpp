#ifndef UTILS_HPP
#define UTILS_HPP
#include <openpose/headers.hpp>
#define sq(x) ((x)*(x))

void configureWrapper(op::Wrapper& opWrapper);

struct Point{
    float x, y, score;
    Point(float _x, float _y, float _s):x(_x), y(_y), score(_s){}
    Point():x(0), y(0), score(0){}
    Point operator +(const Point &p);
    Point operator /(const float scale);
};

Point gethead(op::Array<float> &kps, const int idx);
float dis2(Point &p0, Point &p1);
bool IsLeft(Point &p0, Point &p1, Point &p2);
bool IsRight(Point &p0, Point &p1, Point &p2);
bool IsSharp(Point &p0, Point &p1, Point &p2);
bool IsWavingLeft(Point &head, Point &wrist, Point &elow, Point &shoulder);
bool IsWavingRight(Point &head, Point &wrist, Point &elow, Point &shoulder);

#endif //UTILS_HPP