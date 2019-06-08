// Generated by gencpp from file kamerider_image_msgs/targets_array.msg
// DO NOT EDIT!


#ifndef KAMERIDER_IMAGE_MSGS_MESSAGE_TARGETS_ARRAY_H
#define KAMERIDER_IMAGE_MSGS_MESSAGE_TARGETS_ARRAY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <kamerider_image_msgs/pixel_index.h>

namespace kamerider_image_msgs
{
template <class ContainerAllocator>
struct targets_array_
{
  typedef targets_array_<ContainerAllocator> Type;

  targets_array_()
    : targets()  {
    }
  targets_array_(const ContainerAllocator& _alloc)
    : targets(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::kamerider_image_msgs::pixel_index_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::kamerider_image_msgs::pixel_index_<ContainerAllocator> >::other >  _targets_type;
  _targets_type targets;





  typedef boost::shared_ptr< ::kamerider_image_msgs::targets_array_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::kamerider_image_msgs::targets_array_<ContainerAllocator> const> ConstPtr;

}; // struct targets_array_

typedef ::kamerider_image_msgs::targets_array_<std::allocator<void> > targets_array;

typedef boost::shared_ptr< ::kamerider_image_msgs::targets_array > targets_arrayPtr;
typedef boost::shared_ptr< ::kamerider_image_msgs::targets_array const> targets_arrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::kamerider_image_msgs::targets_array_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::kamerider_image_msgs::targets_array_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace kamerider_image_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'kamerider_image_msgs': ['/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::kamerider_image_msgs::targets_array_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::kamerider_image_msgs::targets_array_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kamerider_image_msgs::targets_array_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::kamerider_image_msgs::targets_array_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kamerider_image_msgs::targets_array_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::kamerider_image_msgs::targets_array_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::kamerider_image_msgs::targets_array_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3e96488ee6e62f38f6544a9a59d4b067";
  }

  static const char* value(const ::kamerider_image_msgs::targets_array_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3e96488ee6e62f38ULL;
  static const uint64_t static_value2 = 0xf6544a9a59d4b067ULL;
};

template<class ContainerAllocator>
struct DataType< ::kamerider_image_msgs::targets_array_<ContainerAllocator> >
{
  static const char* value()
  {
    return "kamerider_image_msgs/targets_array";
  }

  static const char* value(const ::kamerider_image_msgs::targets_array_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::kamerider_image_msgs::targets_array_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pixel_index[] targets\n\
\n\
================================================================================\n\
MSG: kamerider_image_msgs/pixel_index\n\
int32 x\n\
int32 y\n\
";
  }

  static const char* value(const ::kamerider_image_msgs::targets_array_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::kamerider_image_msgs::targets_array_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.targets);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct targets_array_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::kamerider_image_msgs::targets_array_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::kamerider_image_msgs::targets_array_<ContainerAllocator>& v)
  {
    s << indent << "targets[]" << std::endl;
    for (size_t i = 0; i < v.targets.size(); ++i)
    {
      s << indent << "  targets[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::kamerider_image_msgs::pixel_index_<ContainerAllocator> >::stream(s, indent + "    ", v.targets[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // KAMERIDER_IMAGE_MSGS_MESSAGE_TARGETS_ARRAY_H
