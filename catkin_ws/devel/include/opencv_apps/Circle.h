// Generated by gencpp from file opencv_apps/Circle.msg
// DO NOT EDIT!


#ifndef OPENCV_APPS_MESSAGE_CIRCLE_H
#define OPENCV_APPS_MESSAGE_CIRCLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <opencv_apps/Point2D.h>

namespace opencv_apps
{
template <class ContainerAllocator>
struct Circle_
{
  typedef Circle_<ContainerAllocator> Type;

  Circle_()
    : center()
    , radius(0.0)  {
    }
  Circle_(const ContainerAllocator& _alloc)
    : center(_alloc)
    , radius(0.0)  {
  (void)_alloc;
    }



   typedef  ::opencv_apps::Point2D_<ContainerAllocator>  _center_type;
  _center_type center;

   typedef double _radius_type;
  _radius_type radius;





  typedef boost::shared_ptr< ::opencv_apps::Circle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::opencv_apps::Circle_<ContainerAllocator> const> ConstPtr;

}; // struct Circle_

typedef ::opencv_apps::Circle_<std::allocator<void> > Circle;

typedef boost::shared_ptr< ::opencv_apps::Circle > CirclePtr;
typedef boost::shared_ptr< ::opencv_apps::Circle const> CircleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::opencv_apps::Circle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::opencv_apps::Circle_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace opencv_apps

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'opencv_apps': ['/home/wen/rse/catkin_ws/src/opencv_apps/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::opencv_apps::Circle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::opencv_apps::Circle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opencv_apps::Circle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opencv_apps::Circle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opencv_apps::Circle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opencv_apps::Circle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::opencv_apps::Circle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4f6847051b4fe493b5af8caad66201d5";
  }

  static const char* value(const ::opencv_apps::Circle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4f6847051b4fe493ULL;
  static const uint64_t static_value2 = 0xb5af8caad66201d5ULL;
};

template<class ContainerAllocator>
struct DataType< ::opencv_apps::Circle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "opencv_apps/Circle";
  }

  static const char* value(const ::opencv_apps::Circle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::opencv_apps::Circle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Point2D center\n\
float64 radius\n\
\n\
\n\
================================================================================\n\
MSG: opencv_apps/Point2D\n\
float64 x\n\
float64 y\n\
\n\
";
  }

  static const char* value(const ::opencv_apps::Circle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::opencv_apps::Circle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.center);
      stream.next(m.radius);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Circle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::opencv_apps::Circle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::opencv_apps::Circle_<ContainerAllocator>& v)
  {
    s << indent << "center: ";
    s << std::endl;
    Printer< ::opencv_apps::Point2D_<ContainerAllocator> >::stream(s, indent + "  ", v.center);
    s << indent << "radius: ";
    Printer<double>::stream(s, indent + "  ", v.radius);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPENCV_APPS_MESSAGE_CIRCLE_H
