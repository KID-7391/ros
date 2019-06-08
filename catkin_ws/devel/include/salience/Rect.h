// Generated by gencpp from file salience/Rect.msg
// DO NOT EDIT!


#ifndef SALIENCE_MESSAGE_RECT_H
#define SALIENCE_MESSAGE_RECT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace salience
{
template <class ContainerAllocator>
struct Rect_
{
  typedef Rect_<ContainerAllocator> Type;

  Rect_()
    : x0(0.0)
    , y0(0.0)
    , x1(0.0)
    , y1(0.0)
    , id(0)  {
    }
  Rect_(const ContainerAllocator& _alloc)
    : x0(0.0)
    , y0(0.0)
    , x1(0.0)
    , y1(0.0)
    , id(0)  {
  (void)_alloc;
    }



   typedef double _x0_type;
  _x0_type x0;

   typedef double _y0_type;
  _y0_type y0;

   typedef double _x1_type;
  _x1_type x1;

   typedef double _y1_type;
  _y1_type y1;

   typedef int32_t _id_type;
  _id_type id;





  typedef boost::shared_ptr< ::salience::Rect_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::salience::Rect_<ContainerAllocator> const> ConstPtr;

}; // struct Rect_

typedef ::salience::Rect_<std::allocator<void> > Rect;

typedef boost::shared_ptr< ::salience::Rect > RectPtr;
typedef boost::shared_ptr< ::salience::Rect const> RectConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::salience::Rect_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::salience::Rect_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace salience

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'salience': ['/home/wen/rse/catkin_ws/src/salience/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::salience::Rect_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::salience::Rect_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::salience::Rect_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::salience::Rect_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::salience::Rect_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::salience::Rect_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::salience::Rect_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e6d557464a0baf5174b255c2c5be2036";
  }

  static const char* value(const ::salience::Rect_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe6d557464a0baf51ULL;
  static const uint64_t static_value2 = 0x74b255c2c5be2036ULL;
};

template<class ContainerAllocator>
struct DataType< ::salience::Rect_<ContainerAllocator> >
{
  static const char* value()
  {
    return "salience/Rect";
  }

  static const char* value(const ::salience::Rect_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::salience::Rect_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# opencv Rect data type, x-y is center point\n\
float64 x0\n\
float64 y0\n\
float64 x1\n\
float64 y1\n\
int32 id\n\
";
  }

  static const char* value(const ::salience::Rect_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::salience::Rect_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x0);
      stream.next(m.y0);
      stream.next(m.x1);
      stream.next(m.y1);
      stream.next(m.id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Rect_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::salience::Rect_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::salience::Rect_<ContainerAllocator>& v)
  {
    s << indent << "x0: ";
    Printer<double>::stream(s, indent + "  ", v.x0);
    s << indent << "y0: ";
    Printer<double>::stream(s, indent + "  ", v.y0);
    s << indent << "x1: ";
    Printer<double>::stream(s, indent + "  ", v.x1);
    s << indent << "y1: ";
    Printer<double>::stream(s, indent + "  ", v.y1);
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SALIENCE_MESSAGE_RECT_H