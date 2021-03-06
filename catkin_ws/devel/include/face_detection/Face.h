// Generated by gencpp from file face_detection/Face.msg
// DO NOT EDIT!


#ifndef FACE_DETECTION_MESSAGE_FACE_H
#define FACE_DETECTION_MESSAGE_FACE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <face_detection/Rect.h>
#include <face_detection/Rect.h>

namespace face_detection
{
template <class ContainerAllocator>
struct Face_
{
  typedef Face_<ContainerAllocator> Type;

  Face_()
    : face()
    , eyes()
    , label()
    , confidence(0.0)  {
    }
  Face_(const ContainerAllocator& _alloc)
    : face(_alloc)
    , eyes(_alloc)
    , label(_alloc)
    , confidence(0.0)  {
  (void)_alloc;
    }



   typedef  ::face_detection::Rect_<ContainerAllocator>  _face_type;
  _face_type face;

   typedef std::vector< ::face_detection::Rect_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::face_detection::Rect_<ContainerAllocator> >::other >  _eyes_type;
  _eyes_type eyes;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _label_type;
  _label_type label;

   typedef double _confidence_type;
  _confidence_type confidence;





  typedef boost::shared_ptr< ::face_detection::Face_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::face_detection::Face_<ContainerAllocator> const> ConstPtr;

}; // struct Face_

typedef ::face_detection::Face_<std::allocator<void> > Face;

typedef boost::shared_ptr< ::face_detection::Face > FacePtr;
typedef boost::shared_ptr< ::face_detection::Face const> FaceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::face_detection::Face_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::face_detection::Face_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace face_detection

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'face_detection': ['/home/wen/rse/catkin_ws/src/face_detection/msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::face_detection::Face_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::face_detection::Face_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::face_detection::Face_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::face_detection::Face_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::face_detection::Face_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::face_detection::Face_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::face_detection::Face_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a1a50e747b0ca7822ce8611c3ffa7a02";
  }

  static const char* value(const ::face_detection::Face_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa1a50e747b0ca782ULL;
  static const uint64_t static_value2 = 0x2ce8611c3ffa7a02ULL;
};

template<class ContainerAllocator>
struct DataType< ::face_detection::Face_<ContainerAllocator> >
{
  static const char* value()
  {
    return "face_detection/Face";
  }

  static const char* value(const ::face_detection::Face_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::face_detection::Face_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Rect face\n\
Rect[] eyes\n\
string label\n\
float64 confidence\n\
\n\
================================================================================\n\
MSG: face_detection/Rect\n\
# opencv Rect data type, x-y is center point\n\
float64 x\n\
float64 y\n\
float64 width\n\
float64 height\n\
\n\
";
  }

  static const char* value(const ::face_detection::Face_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::face_detection::Face_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.face);
      stream.next(m.eyes);
      stream.next(m.label);
      stream.next(m.confidence);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Face_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::face_detection::Face_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::face_detection::Face_<ContainerAllocator>& v)
  {
    s << indent << "face: ";
    s << std::endl;
    Printer< ::face_detection::Rect_<ContainerAllocator> >::stream(s, indent + "  ", v.face);
    s << indent << "eyes[]" << std::endl;
    for (size_t i = 0; i < v.eyes.size(); ++i)
    {
      s << indent << "  eyes[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::face_detection::Rect_<ContainerAllocator> >::stream(s, indent + "    ", v.eyes[i]);
    }
    s << indent << "label: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.label);
    s << indent << "confidence: ";
    Printer<double>::stream(s, indent + "  ", v.confidence);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FACE_DETECTION_MESSAGE_FACE_H
