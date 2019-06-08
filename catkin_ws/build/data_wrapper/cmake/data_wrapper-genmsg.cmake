# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "data_wrapper: 1 messages, 0 services")

set(MSG_I_FLAGS "-Idata_wrapper:/home/wen/rse/catkin_ws/src/data_wrapper/msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(data_wrapper_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wen/rse/catkin_ws/src/data_wrapper/msg/scan_odom.msg" NAME_WE)
add_custom_target(_data_wrapper_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "data_wrapper" "/home/wen/rse/catkin_ws/src/data_wrapper/msg/scan_odom.msg" "geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/TwistWithCovariance:sensor_msgs/LaserScan:geometry_msgs/PoseWithCovariance:geometry_msgs/Pose:nav_msgs/Odometry"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(data_wrapper
  "/home/wen/rse/catkin_ws/src/data_wrapper/msg/scan_odom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/data_wrapper
)

### Generating Services

### Generating Module File
_generate_module_cpp(data_wrapper
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/data_wrapper
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(data_wrapper_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(data_wrapper_generate_messages data_wrapper_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/data_wrapper/msg/scan_odom.msg" NAME_WE)
add_dependencies(data_wrapper_generate_messages_cpp _data_wrapper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(data_wrapper_gencpp)
add_dependencies(data_wrapper_gencpp data_wrapper_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS data_wrapper_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(data_wrapper
  "/home/wen/rse/catkin_ws/src/data_wrapper/msg/scan_odom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/data_wrapper
)

### Generating Services

### Generating Module File
_generate_module_eus(data_wrapper
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/data_wrapper
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(data_wrapper_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(data_wrapper_generate_messages data_wrapper_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/data_wrapper/msg/scan_odom.msg" NAME_WE)
add_dependencies(data_wrapper_generate_messages_eus _data_wrapper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(data_wrapper_geneus)
add_dependencies(data_wrapper_geneus data_wrapper_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS data_wrapper_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(data_wrapper
  "/home/wen/rse/catkin_ws/src/data_wrapper/msg/scan_odom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/data_wrapper
)

### Generating Services

### Generating Module File
_generate_module_lisp(data_wrapper
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/data_wrapper
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(data_wrapper_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(data_wrapper_generate_messages data_wrapper_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/data_wrapper/msg/scan_odom.msg" NAME_WE)
add_dependencies(data_wrapper_generate_messages_lisp _data_wrapper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(data_wrapper_genlisp)
add_dependencies(data_wrapper_genlisp data_wrapper_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS data_wrapper_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(data_wrapper
  "/home/wen/rse/catkin_ws/src/data_wrapper/msg/scan_odom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/data_wrapper
)

### Generating Services

### Generating Module File
_generate_module_nodejs(data_wrapper
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/data_wrapper
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(data_wrapper_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(data_wrapper_generate_messages data_wrapper_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/data_wrapper/msg/scan_odom.msg" NAME_WE)
add_dependencies(data_wrapper_generate_messages_nodejs _data_wrapper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(data_wrapper_gennodejs)
add_dependencies(data_wrapper_gennodejs data_wrapper_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS data_wrapper_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(data_wrapper
  "/home/wen/rse/catkin_ws/src/data_wrapper/msg/scan_odom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/data_wrapper
)

### Generating Services

### Generating Module File
_generate_module_py(data_wrapper
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/data_wrapper
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(data_wrapper_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(data_wrapper_generate_messages data_wrapper_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/data_wrapper/msg/scan_odom.msg" NAME_WE)
add_dependencies(data_wrapper_generate_messages_py _data_wrapper_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(data_wrapper_genpy)
add_dependencies(data_wrapper_genpy data_wrapper_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS data_wrapper_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/data_wrapper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/data_wrapper
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(data_wrapper_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(data_wrapper_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(data_wrapper_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/data_wrapper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/data_wrapper
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(data_wrapper_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(data_wrapper_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(data_wrapper_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/data_wrapper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/data_wrapper
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(data_wrapper_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(data_wrapper_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(data_wrapper_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/data_wrapper)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/data_wrapper
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(data_wrapper_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(data_wrapper_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(data_wrapper_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/data_wrapper)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/data_wrapper\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/data_wrapper
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(data_wrapper_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(data_wrapper_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(data_wrapper_generate_messages_py std_msgs_generate_messages_py)
endif()
