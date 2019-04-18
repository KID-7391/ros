//#line 2 "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"
// *********************************************************
//
// File autogenerated for the opencv_apps package
// by the dynamic_reconfigure package.
// Please do not edit.
//
// ********************************************************/

#ifndef __opencv_apps__HOUGHCIRCLESCONFIG_H__
#define __opencv_apps__HOUGHCIRCLESCONFIG_H__

#if __cplusplus >= 201103L
#define DYNAMIC_RECONFIGURE_FINAL final
#else
#define DYNAMIC_RECONFIGURE_FINAL
#endif

#include <dynamic_reconfigure/config_tools.h>
#include <limits>
#include <ros/node_handle.h>
#include <dynamic_reconfigure/ConfigDescription.h>
#include <dynamic_reconfigure/ParamDescription.h>
#include <dynamic_reconfigure/Group.h>
#include <dynamic_reconfigure/config_init_mutex.h>
#include <boost/any.hpp>

namespace opencv_apps
{
  class HoughCirclesConfigStatics;

  class HoughCirclesConfig
  {
  public:
    class AbstractParamDescription : public dynamic_reconfigure::ParamDescription
    {
    public:
      AbstractParamDescription(std::string n, std::string t, uint32_t l,
          std::string d, std::string e)
      {
        name = n;
        type = t;
        level = l;
        description = d;
        edit_method = e;
      }

      virtual void clamp(HoughCirclesConfig &config, const HoughCirclesConfig &max, const HoughCirclesConfig &min) const = 0;
      virtual void calcLevel(uint32_t &level, const HoughCirclesConfig &config1, const HoughCirclesConfig &config2) const = 0;
      virtual void fromServer(const ros::NodeHandle &nh, HoughCirclesConfig &config) const = 0;
      virtual void toServer(const ros::NodeHandle &nh, const HoughCirclesConfig &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, HoughCirclesConfig &config) const = 0;
      virtual void toMessage(dynamic_reconfigure::Config &msg, const HoughCirclesConfig &config) const = 0;
      virtual void getValue(const HoughCirclesConfig &config, boost::any &val) const = 0;
    };

    typedef boost::shared_ptr<AbstractParamDescription> AbstractParamDescriptionPtr;
    typedef boost::shared_ptr<const AbstractParamDescription> AbstractParamDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template <class T>
    class ParamDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractParamDescription
    {
    public:
      ParamDescription(std::string a_name, std::string a_type, uint32_t a_level,
          std::string a_description, std::string a_edit_method, T HoughCirclesConfig::* a_f) :
        AbstractParamDescription(a_name, a_type, a_level, a_description, a_edit_method),
        field(a_f)
      {}

      T (HoughCirclesConfig::* field);

      virtual void clamp(HoughCirclesConfig &config, const HoughCirclesConfig &max, const HoughCirclesConfig &min) const
      {
        if (config.*field > max.*field)
          config.*field = max.*field;

        if (config.*field < min.*field)
          config.*field = min.*field;
      }

      virtual void calcLevel(uint32_t &comb_level, const HoughCirclesConfig &config1, const HoughCirclesConfig &config2) const
      {
        if (config1.*field != config2.*field)
          comb_level |= level;
      }

      virtual void fromServer(const ros::NodeHandle &nh, HoughCirclesConfig &config) const
      {
        nh.getParam(name, config.*field);
      }

      virtual void toServer(const ros::NodeHandle &nh, const HoughCirclesConfig &config) const
      {
        nh.setParam(name, config.*field);
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, HoughCirclesConfig &config) const
      {
        return dynamic_reconfigure::ConfigTools::getParameter(msg, name, config.*field);
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const HoughCirclesConfig &config) const
      {
        dynamic_reconfigure::ConfigTools::appendParameter(msg, name, config.*field);
      }

      virtual void getValue(const HoughCirclesConfig &config, boost::any &val) const
      {
        val = config.*field;
      }
    };

    class AbstractGroupDescription : public dynamic_reconfigure::Group
    {
      public:
      AbstractGroupDescription(std::string n, std::string t, int p, int i, bool s)
      {
        name = n;
        type = t;
        parent = p;
        state = s;
        id = i;
      }

      std::vector<AbstractParamDescriptionConstPtr> abstract_parameters;
      bool state;

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &config) const = 0;
      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &config) const =0;
      virtual void updateParams(boost::any &cfg, HoughCirclesConfig &top) const= 0;
      virtual void setInitialState(boost::any &cfg) const = 0;


      void convertParams()
      {
        for(std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = abstract_parameters.begin(); i != abstract_parameters.end(); ++i)
        {
          parameters.push_back(dynamic_reconfigure::ParamDescription(**i));
        }
      }
    };

    typedef boost::shared_ptr<AbstractGroupDescription> AbstractGroupDescriptionPtr;
    typedef boost::shared_ptr<const AbstractGroupDescription> AbstractGroupDescriptionConstPtr;

    // Final keyword added to class because it has virtual methods and inherits
    // from a class with a non-virtual destructor.
    template<class T, class PT>
    class GroupDescription DYNAMIC_RECONFIGURE_FINAL : public AbstractGroupDescription
    {
    public:
      GroupDescription(std::string a_name, std::string a_type, int a_parent, int a_id, bool a_s, T PT::* a_f) : AbstractGroupDescription(a_name, a_type, a_parent, a_id, a_s), field(a_f)
      {
      }

      GroupDescription(const GroupDescription<T, PT>& g): AbstractGroupDescription(g.name, g.type, g.parent, g.id, g.state), field(g.field), groups(g.groups)
      {
        parameters = g.parameters;
        abstract_parameters = g.abstract_parameters;
      }

      virtual bool fromMessage(const dynamic_reconfigure::Config &msg, boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        if(!dynamic_reconfigure::ConfigTools::getGroupState(msg, name, (*config).*field))
          return false;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          if(!(*i)->fromMessage(msg, n))
            return false;
        }

        return true;
      }

      virtual void setInitialState(boost::any &cfg) const
      {
        PT* config = boost::any_cast<PT*>(cfg);
        T* group = &((*config).*field);
        group->state = state;

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = boost::any(&((*config).*field));
          (*i)->setInitialState(n);
        }

      }

      virtual void updateParams(boost::any &cfg, HoughCirclesConfig &top) const
      {
        PT* config = boost::any_cast<PT*>(cfg);

        T* f = &((*config).*field);
        f->setParams(top, abstract_parameters);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          boost::any n = &((*config).*field);
          (*i)->updateParams(n, top);
        }
      }

      virtual void toMessage(dynamic_reconfigure::Config &msg, const boost::any &cfg) const
      {
        const PT config = boost::any_cast<PT>(cfg);
        dynamic_reconfigure::ConfigTools::appendGroup<T>(msg, name, id, parent, config.*field);

        for(std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = groups.begin(); i != groups.end(); ++i)
        {
          (*i)->toMessage(msg, config.*field);
        }
      }

      T (PT::* field);
      std::vector<HoughCirclesConfig::AbstractGroupDescriptionConstPtr> groups;
    };

class DEFAULT
{
  public:
    DEFAULT()
    {
      state = true;
      name = "Default";
    }

    void setParams(HoughCirclesConfig &config, const std::vector<AbstractParamDescriptionConstPtr> params)
    {
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator _i = params.begin(); _i != params.end(); ++_i)
      {
        boost::any val;
        (*_i)->getValue(config, val);

        if("use_camera_info"==(*_i)->name){use_camera_info = boost::any_cast<bool>(val);}
        if("canny_threshold"==(*_i)->name){canny_threshold = boost::any_cast<double>(val);}
        if("accumulator_threshold"==(*_i)->name){accumulator_threshold = boost::any_cast<double>(val);}
        if("gaussian_blur_size"==(*_i)->name){gaussian_blur_size = boost::any_cast<int>(val);}
        if("gaussian_sigma_x"==(*_i)->name){gaussian_sigma_x = boost::any_cast<double>(val);}
        if("gaussian_sigma_y"==(*_i)->name){gaussian_sigma_y = boost::any_cast<double>(val);}
        if("min_distance_between_circles"==(*_i)->name){min_distance_between_circles = boost::any_cast<double>(val);}
        if("dp"==(*_i)->name){dp = boost::any_cast<double>(val);}
        if("min_circle_radius"==(*_i)->name){min_circle_radius = boost::any_cast<int>(val);}
        if("max_circle_radius"==(*_i)->name){max_circle_radius = boost::any_cast<int>(val);}
        if("debug_image_type"==(*_i)->name){debug_image_type = boost::any_cast<int>(val);}
      }
    }

    bool use_camera_info;
double canny_threshold;
double accumulator_threshold;
int gaussian_blur_size;
double gaussian_sigma_x;
double gaussian_sigma_y;
double min_distance_between_circles;
double dp;
int min_circle_radius;
int max_circle_radius;
int debug_image_type;

    bool state;
    std::string name;

    
}groups;



//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      bool use_camera_info;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double canny_threshold;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double accumulator_threshold;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int gaussian_blur_size;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double gaussian_sigma_x;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double gaussian_sigma_y;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double min_distance_between_circles;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      double dp;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int min_circle_radius;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int max_circle_radius;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      int debug_image_type;
//#line 228 "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

    bool __fromMessage__(dynamic_reconfigure::Config &msg)
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();

      int count = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        if ((*i)->fromMessage(msg, *this))
          count++;

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i ++)
      {
        if ((*i)->id == 0)
        {
          boost::any n = boost::any(this);
          (*i)->updateParams(n, *this);
          (*i)->fromMessage(msg, n);
        }
      }

      if (count != dynamic_reconfigure::ConfigTools::size(msg))
      {
        ROS_ERROR("HoughCirclesConfig::__fromMessage__ called with an unexpected parameter.");
        ROS_ERROR("Booleans:");
        for (unsigned int i = 0; i < msg.bools.size(); i++)
          ROS_ERROR("  %s", msg.bools[i].name.c_str());
        ROS_ERROR("Integers:");
        for (unsigned int i = 0; i < msg.ints.size(); i++)
          ROS_ERROR("  %s", msg.ints[i].name.c_str());
        ROS_ERROR("Doubles:");
        for (unsigned int i = 0; i < msg.doubles.size(); i++)
          ROS_ERROR("  %s", msg.doubles[i].name.c_str());
        ROS_ERROR("Strings:");
        for (unsigned int i = 0; i < msg.strs.size(); i++)
          ROS_ERROR("  %s", msg.strs[i].name.c_str());
        // @todo Check that there are no duplicates. Make this error more
        // explicit.
        return false;
      }
      return true;
    }

    // This version of __toMessage__ is used during initialization of
    // statics when __getParamDescriptions__ can't be called yet.
    void __toMessage__(dynamic_reconfigure::Config &msg, const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__, const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__) const
    {
      dynamic_reconfigure::ConfigTools::clear(msg);
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toMessage(msg, *this);

      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        if((*i)->id == 0)
        {
          (*i)->toMessage(msg, *this);
        }
      }
    }

    void __toMessage__(dynamic_reconfigure::Config &msg) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      __toMessage__(msg, __param_descriptions__, __group_descriptions__);
    }

    void __toServer__(const ros::NodeHandle &nh) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->toServer(nh, *this);
    }

    void __fromServer__(const ros::NodeHandle &nh)
    {
      static bool setup=false;

      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->fromServer(nh, *this);

      const std::vector<AbstractGroupDescriptionConstPtr> &__group_descriptions__ = __getGroupDescriptions__();
      for (std::vector<AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); i++){
        if (!setup && (*i)->id == 0) {
          setup = true;
          boost::any n = boost::any(this);
          (*i)->setInitialState(n);
        }
      }
    }

    void __clamp__()
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      const HoughCirclesConfig &__max__ = __getMax__();
      const HoughCirclesConfig &__min__ = __getMin__();
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->clamp(*this, __max__, __min__);
    }

    uint32_t __level__(const HoughCirclesConfig &config) const
    {
      const std::vector<AbstractParamDescriptionConstPtr> &__param_descriptions__ = __getParamDescriptions__();
      uint32_t level = 0;
      for (std::vector<AbstractParamDescriptionConstPtr>::const_iterator i = __param_descriptions__.begin(); i != __param_descriptions__.end(); ++i)
        (*i)->calcLevel(level, config, *this);
      return level;
    }

    static const dynamic_reconfigure::ConfigDescription &__getDescriptionMessage__();
    static const HoughCirclesConfig &__getDefault__();
    static const HoughCirclesConfig &__getMax__();
    static const HoughCirclesConfig &__getMin__();
    static const std::vector<AbstractParamDescriptionConstPtr> &__getParamDescriptions__();
    static const std::vector<AbstractGroupDescriptionConstPtr> &__getGroupDescriptions__();

  private:
    static const HoughCirclesConfigStatics *__get_statics__();
  };

  template <> // Max and min are ignored for strings.
  inline void HoughCirclesConfig::ParamDescription<std::string>::clamp(HoughCirclesConfig &config, const HoughCirclesConfig &max, const HoughCirclesConfig &min) const
  {
    (void) config;
    (void) min;
    (void) max;
    return;
  }

  class HoughCirclesConfigStatics
  {
    friend class HoughCirclesConfig;

    HoughCirclesConfigStatics()
    {
HoughCirclesConfig::GroupDescription<HoughCirclesConfig::DEFAULT, HoughCirclesConfig> Default("Default", "", 0, 0, true, &HoughCirclesConfig::groups);
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.use_camera_info = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.use_camera_info = 1;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.use_camera_info = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<bool>("use_camera_info", "bool", 0, "Indicates that the camera_info topic should be subscribed to to get the default input_frame_id. Otherwise the frame from the image message will be used.", "", &HoughCirclesConfig::use_camera_info)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<bool>("use_camera_info", "bool", 0, "Indicates that the camera_info topic should be subscribed to to get the default input_frame_id. Otherwise the frame from the image message will be used.", "", &HoughCirclesConfig::use_camera_info)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.canny_threshold = 1.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.canny_threshold = 255.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.canny_threshold = 200.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<double>("canny_threshold", "double", 0, "Canny threshold", "", &HoughCirclesConfig::canny_threshold)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<double>("canny_threshold", "double", 0, "Canny threshold", "", &HoughCirclesConfig::canny_threshold)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.accumulator_threshold = 1.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.accumulator_threshold = 200.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.accumulator_threshold = 50.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<double>("accumulator_threshold", "double", 0, "Accumulator threshold", "", &HoughCirclesConfig::accumulator_threshold)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<double>("accumulator_threshold", "double", 0, "Accumulator threshold", "", &HoughCirclesConfig::accumulator_threshold)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.gaussian_blur_size = 1;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.gaussian_blur_size = 30;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.gaussian_blur_size = 9;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<int>("gaussian_blur_size", "int", 0, "the size of gaussian blur (should be odd number)", "", &HoughCirclesConfig::gaussian_blur_size)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<int>("gaussian_blur_size", "int", 0, "the size of gaussian blur (should be odd number)", "", &HoughCirclesConfig::gaussian_blur_size)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.gaussian_sigma_x = 1.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.gaussian_sigma_x = 10.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.gaussian_sigma_x = 2.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<double>("gaussian_sigma_x", "double", 0, "sigma x of gaussian kernel", "", &HoughCirclesConfig::gaussian_sigma_x)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<double>("gaussian_sigma_x", "double", 0, "sigma x of gaussian kernel", "", &HoughCirclesConfig::gaussian_sigma_x)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.gaussian_sigma_y = 1.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.gaussian_sigma_y = 10.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.gaussian_sigma_y = 2.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<double>("gaussian_sigma_y", "double", 0, "sigma y of gaussian kernel", "", &HoughCirclesConfig::gaussian_sigma_y)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<double>("gaussian_sigma_y", "double", 0, "sigma y of gaussian kernel", "", &HoughCirclesConfig::gaussian_sigma_y)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.min_distance_between_circles = 0.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.min_distance_between_circles = 1024.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.min_distance_between_circles = 0.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<double>("min_distance_between_circles", "double", 0, "mnimum distance between the centers of the detected circles", "", &HoughCirclesConfig::min_distance_between_circles)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<double>("min_distance_between_circles", "double", 0, "mnimum distance between the centers of the detected circles", "", &HoughCirclesConfig::min_distance_between_circles)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.dp = 0.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.dp = 100.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.dp = 2.0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<double>("dp", "double", 0, "dp", "", &HoughCirclesConfig::dp)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<double>("dp", "double", 0, "dp", "", &HoughCirclesConfig::dp)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.min_circle_radius = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.min_circle_radius = 500;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.min_circle_radius = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<int>("min_circle_radius", "int", 0, "the minimum size of the circle", "", &HoughCirclesConfig::min_circle_radius)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<int>("min_circle_radius", "int", 0, "the minimum size of the circle", "", &HoughCirclesConfig::min_circle_radius)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.max_circle_radius = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.max_circle_radius = 2000;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.max_circle_radius = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<int>("max_circle_radius", "int", 0, "the maximum size of the circle", "", &HoughCirclesConfig::max_circle_radius)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<int>("max_circle_radius", "int", 0, "the maximum size of the circle", "", &HoughCirclesConfig::max_circle_radius)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __min__.debug_image_type = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __max__.debug_image_type = 2;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __default__.debug_image_type = 0;
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.abstract_parameters.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<int>("debug_image_type", "int", 0, "Select image type for debug output", "{'enum_description': 'An enum for debug view', 'enum': [{'srcline': 53, 'description': 'Input image', 'srcfile': '/home/wen/rse/catkin_ws/src/opencv_apps/cfg/HoughCircles.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'Input'}, {'srcline': 54, 'description': 'GaussianBlur image', 'srcfile': '/home/wen/rse/catkin_ws/src/opencv_apps/cfg/HoughCircles.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'Blur'}, {'srcline': 55, 'description': 'Canny edge image', 'srcfile': '/home/wen/rse/catkin_ws/src/opencv_apps/cfg/HoughCircles.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'Canny'}]}", &HoughCirclesConfig::debug_image_type)));
//#line 290 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __param_descriptions__.push_back(HoughCirclesConfig::AbstractParamDescriptionConstPtr(new HoughCirclesConfig::ParamDescription<int>("debug_image_type", "int", 0, "Select image type for debug output", "{'enum_description': 'An enum for debug view', 'enum': [{'srcline': 53, 'description': 'Input image', 'srcfile': '/home/wen/rse/catkin_ws/src/opencv_apps/cfg/HoughCircles.cfg', 'cconsttype': 'const int', 'value': 0, 'ctype': 'int', 'type': 'int', 'name': 'Input'}, {'srcline': 54, 'description': 'GaussianBlur image', 'srcfile': '/home/wen/rse/catkin_ws/src/opencv_apps/cfg/HoughCircles.cfg', 'cconsttype': 'const int', 'value': 1, 'ctype': 'int', 'type': 'int', 'name': 'Blur'}, {'srcline': 55, 'description': 'Canny edge image', 'srcfile': '/home/wen/rse/catkin_ws/src/opencv_apps/cfg/HoughCircles.cfg', 'cconsttype': 'const int', 'value': 2, 'ctype': 'int', 'type': 'int', 'name': 'Canny'}]}", &HoughCirclesConfig::debug_image_type)));
//#line 245 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      Default.convertParams();
//#line 245 "/opt/ros/kinetic/lib/python2.7/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py"
      __group_descriptions__.push_back(HoughCirclesConfig::AbstractGroupDescriptionConstPtr(new HoughCirclesConfig::GroupDescription<HoughCirclesConfig::DEFAULT, HoughCirclesConfig>(Default)));
//#line 366 "/opt/ros/kinetic/share/dynamic_reconfigure/cmake/../templates/ConfigType.h.template"

      for (std::vector<HoughCirclesConfig::AbstractGroupDescriptionConstPtr>::const_iterator i = __group_descriptions__.begin(); i != __group_descriptions__.end(); ++i)
      {
        __description_message__.groups.push_back(**i);
      }
      __max__.__toMessage__(__description_message__.max, __param_descriptions__, __group_descriptions__);
      __min__.__toMessage__(__description_message__.min, __param_descriptions__, __group_descriptions__);
      __default__.__toMessage__(__description_message__.dflt, __param_descriptions__, __group_descriptions__);
    }
    std::vector<HoughCirclesConfig::AbstractParamDescriptionConstPtr> __param_descriptions__;
    std::vector<HoughCirclesConfig::AbstractGroupDescriptionConstPtr> __group_descriptions__;
    HoughCirclesConfig __max__;
    HoughCirclesConfig __min__;
    HoughCirclesConfig __default__;
    dynamic_reconfigure::ConfigDescription __description_message__;

    static const HoughCirclesConfigStatics *get_instance()
    {
      // Split this off in a separate function because I know that
      // instance will get initialized the first time get_instance is
      // called, and I am guaranteeing that get_instance gets called at
      // most once.
      static HoughCirclesConfigStatics instance;
      return &instance;
    }
  };

  inline const dynamic_reconfigure::ConfigDescription &HoughCirclesConfig::__getDescriptionMessage__()
  {
    return __get_statics__()->__description_message__;
  }

  inline const HoughCirclesConfig &HoughCirclesConfig::__getDefault__()
  {
    return __get_statics__()->__default__;
  }

  inline const HoughCirclesConfig &HoughCirclesConfig::__getMax__()
  {
    return __get_statics__()->__max__;
  }

  inline const HoughCirclesConfig &HoughCirclesConfig::__getMin__()
  {
    return __get_statics__()->__min__;
  }

  inline const std::vector<HoughCirclesConfig::AbstractParamDescriptionConstPtr> &HoughCirclesConfig::__getParamDescriptions__()
  {
    return __get_statics__()->__param_descriptions__;
  }

  inline const std::vector<HoughCirclesConfig::AbstractGroupDescriptionConstPtr> &HoughCirclesConfig::__getGroupDescriptions__()
  {
    return __get_statics__()->__group_descriptions__;
  }

  inline const HoughCirclesConfigStatics *HoughCirclesConfig::__get_statics__()
  {
    const static HoughCirclesConfigStatics *statics;

    if (statics) // Common case
      return statics;

    boost::mutex::scoped_lock lock(dynamic_reconfigure::__init_mutex__);

    if (statics) // In case we lost a race.
      return statics;

    statics = HoughCirclesConfigStatics::get_instance();

    return statics;
  }

//#line 53 "/home/wen/rse/catkin_ws/src/opencv_apps/cfg/HoughCircles.cfg"
      const int HoughCircles_Input = 0;
//#line 54 "/home/wen/rse/catkin_ws/src/opencv_apps/cfg/HoughCircles.cfg"
      const int HoughCircles_Blur = 1;
//#line 55 "/home/wen/rse/catkin_ws/src/opencv_apps/cfg/HoughCircles.cfg"
      const int HoughCircles_Canny = 2;
}

#undef DYNAMIC_RECONFIGURE_FINAL

#endif // __HOUGHCIRCLESRECONFIGURATOR_H__
