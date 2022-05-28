// Generated by gencpp from file interbotix_xs_sdk/MotorGainsRequest.msg
// DO NOT EDIT!


#ifndef INTERBOTIX_XS_SDK_MESSAGE_MOTORGAINSREQUEST_H
#define INTERBOTIX_XS_SDK_MESSAGE_MOTORGAINSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace interbotix_xs_sdk
{
template <class ContainerAllocator>
struct MotorGainsRequest_
{
  typedef MotorGainsRequest_<ContainerAllocator> Type;

  MotorGainsRequest_()
    : cmd_type()
    , name()
    , kp_pos(0)
    , ki_pos(0)
    , kd_pos(0)
    , k1(0)
    , k2(0)
    , kp_vel(0)
    , ki_vel(0)  {
    }
  MotorGainsRequest_(const ContainerAllocator& _alloc)
    : cmd_type(_alloc)
    , name(_alloc)
    , kp_pos(0)
    , ki_pos(0)
    , kd_pos(0)
    , k1(0)
    , k2(0)
    , kp_vel(0)
    , ki_vel(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _cmd_type_type;
  _cmd_type_type cmd_type;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef int32_t _kp_pos_type;
  _kp_pos_type kp_pos;

   typedef int32_t _ki_pos_type;
  _ki_pos_type ki_pos;

   typedef int32_t _kd_pos_type;
  _kd_pos_type kd_pos;

   typedef int32_t _k1_type;
  _k1_type k1;

   typedef int32_t _k2_type;
  _k2_type k2;

   typedef int32_t _kp_vel_type;
  _kp_vel_type kp_vel;

   typedef int32_t _ki_vel_type;
  _ki_vel_type ki_vel;





  typedef boost::shared_ptr< ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MotorGainsRequest_

typedef ::interbotix_xs_sdk::MotorGainsRequest_<std::allocator<void> > MotorGainsRequest;

typedef boost::shared_ptr< ::interbotix_xs_sdk::MotorGainsRequest > MotorGainsRequestPtr;
typedef boost::shared_ptr< ::interbotix_xs_sdk::MotorGainsRequest const> MotorGainsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator1> & lhs, const ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.cmd_type == rhs.cmd_type &&
    lhs.name == rhs.name &&
    lhs.kp_pos == rhs.kp_pos &&
    lhs.ki_pos == rhs.ki_pos &&
    lhs.kd_pos == rhs.kd_pos &&
    lhs.k1 == rhs.k1 &&
    lhs.k2 == rhs.k2 &&
    lhs.kp_vel == rhs.kp_vel &&
    lhs.ki_vel == rhs.ki_vel;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator1> & lhs, const ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace interbotix_xs_sdk

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7c362297bf8bae149936ba71305f3900";
  }

  static const char* value(const ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7c362297bf8bae14ULL;
  static const uint64_t static_value2 = 0x9936ba71305f3900ULL;
};

template<class ContainerAllocator>
struct DataType< ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "interbotix_xs_sdk/MotorGainsRequest";
  }

  static const char* value(const ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Set PID gains\n"
"#\n"
"# To get familiar with the various PID gains, go to...\n"
"# http://emanual.robotis.com/docs/en/software/dynamixel/dynamixel_workbench/\n"
"# ...click on a motor model, and scroll down to the 'PID' section.\n"
"\n"
"string cmd_type          # set to 'group' if commanding a joint group or 'single' if commanding a single joint\n"
"string name              # name of the group if commanding a joint group or joint if commanding a single joint\n"
"int32 kp_pos             # acts as a pass-through to the Position_P_Gain register\n"
"int32 ki_pos             # acts as a pass-through to the Position_I_Gain register\n"
"int32 kd_pos             # acts as a pass-through to the Position_D_Gain register\n"
"int32 k1                 # acts as a pass-through to the Feedforward_1st_Gain register\n"
"int32 k2                 # acts as a pass-through to the Feedforward_2nd_Gain register\n"
"int32 kp_vel             # acts as a pass-through to the Velocity_P_Gain register\n"
"int32 ki_vel             # acts as a pass-through to the Velocity_I_Gain register\n"
;
  }

  static const char* value(const ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd_type);
      stream.next(m.name);
      stream.next(m.kp_pos);
      stream.next(m.ki_pos);
      stream.next(m.kd_pos);
      stream.next(m.k1);
      stream.next(m.k2);
      stream.next(m.kp_vel);
      stream.next(m.ki_vel);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MotorGainsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::interbotix_xs_sdk::MotorGainsRequest_<ContainerAllocator>& v)
  {
    s << indent << "cmd_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.cmd_type);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "kp_pos: ";
    Printer<int32_t>::stream(s, indent + "  ", v.kp_pos);
    s << indent << "ki_pos: ";
    Printer<int32_t>::stream(s, indent + "  ", v.ki_pos);
    s << indent << "kd_pos: ";
    Printer<int32_t>::stream(s, indent + "  ", v.kd_pos);
    s << indent << "k1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.k1);
    s << indent << "k2: ";
    Printer<int32_t>::stream(s, indent + "  ", v.k2);
    s << indent << "kp_vel: ";
    Printer<int32_t>::stream(s, indent + "  ", v.kp_vel);
    s << indent << "ki_vel: ";
    Printer<int32_t>::stream(s, indent + "  ", v.ki_vel);
  }
};

} // namespace message_operations
} // namespace ros

#endif // INTERBOTIX_XS_SDK_MESSAGE_MOTORGAINSREQUEST_H
