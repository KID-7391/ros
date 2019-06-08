# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kamerider_image_msgs: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ikamerider_image_msgs:/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kamerider_image_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/mission.msg" NAME_WE)
add_custom_target(_kamerider_image_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kamerider_image_msgs" "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/mission.msg" ""
)

get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/BoundingBox.msg" NAME_WE)
add_custom_target(_kamerider_image_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kamerider_image_msgs" "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/BoundingBox.msg" ""
)

get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/ObjectPosition.msg" NAME_WE)
add_custom_target(_kamerider_image_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kamerider_image_msgs" "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/ObjectPosition.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/GenderDetection.msg" NAME_WE)
add_custom_target(_kamerider_image_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kamerider_image_msgs" "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/GenderDetection.msg" ""
)

get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/FaceDetection.msg" NAME_WE)
add_custom_target(_kamerider_image_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kamerider_image_msgs" "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/FaceDetection.msg" "std_msgs/Header:kamerider_image_msgs/BoundingBox"
)

get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/pixel_index.msg" NAME_WE)
add_custom_target(_kamerider_image_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kamerider_image_msgs" "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/pixel_index.msg" ""
)

get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/targets_array.msg" NAME_WE)
add_custom_target(_kamerider_image_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kamerider_image_msgs" "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/targets_array.msg" "kamerider_image_msgs/pixel_index"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/mission.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_cpp(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_cpp(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/GenderDetection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_cpp(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/FaceDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_cpp(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/ObjectPosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_cpp(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/pixel_index.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_cpp(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/targets_array.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/pixel_index.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kamerider_image_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(kamerider_image_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kamerider_image_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kamerider_image_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kamerider_image_msgs_generate_messages kamerider_image_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/mission.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_cpp _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_cpp _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/ObjectPosition.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_cpp _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/GenderDetection.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_cpp _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/FaceDetection.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_cpp _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/pixel_index.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_cpp _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/targets_array.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_cpp _kamerider_image_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kamerider_image_msgs_gencpp)
add_dependencies(kamerider_image_msgs_gencpp kamerider_image_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kamerider_image_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/mission.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_eus(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_eus(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/GenderDetection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_eus(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/FaceDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_eus(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/ObjectPosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_eus(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/pixel_index.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_eus(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/targets_array.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/pixel_index.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kamerider_image_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(kamerider_image_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kamerider_image_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(kamerider_image_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(kamerider_image_msgs_generate_messages kamerider_image_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/mission.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_eus _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_eus _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/ObjectPosition.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_eus _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/GenderDetection.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_eus _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/FaceDetection.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_eus _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/pixel_index.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_eus _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/targets_array.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_eus _kamerider_image_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kamerider_image_msgs_geneus)
add_dependencies(kamerider_image_msgs_geneus kamerider_image_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kamerider_image_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/mission.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_lisp(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_lisp(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/GenderDetection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_lisp(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/FaceDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_lisp(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/ObjectPosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_lisp(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/pixel_index.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_lisp(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/targets_array.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/pixel_index.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kamerider_image_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(kamerider_image_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kamerider_image_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(kamerider_image_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(kamerider_image_msgs_generate_messages kamerider_image_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/mission.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_lisp _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_lisp _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/ObjectPosition.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_lisp _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/GenderDetection.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_lisp _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/FaceDetection.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_lisp _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/pixel_index.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_lisp _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/targets_array.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_lisp _kamerider_image_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kamerider_image_msgs_genlisp)
add_dependencies(kamerider_image_msgs_genlisp kamerider_image_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kamerider_image_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/mission.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_nodejs(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_nodejs(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/GenderDetection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_nodejs(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/FaceDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_nodejs(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/ObjectPosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_nodejs(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/pixel_index.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_nodejs(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/targets_array.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/pixel_index.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kamerider_image_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(kamerider_image_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kamerider_image_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(kamerider_image_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(kamerider_image_msgs_generate_messages kamerider_image_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/mission.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_nodejs _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_nodejs _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/ObjectPosition.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_nodejs _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/GenderDetection.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_nodejs _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/FaceDetection.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_nodejs _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/pixel_index.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_nodejs _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/targets_array.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_nodejs _kamerider_image_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kamerider_image_msgs_gennodejs)
add_dependencies(kamerider_image_msgs_gennodejs kamerider_image_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kamerider_image_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/mission.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_py(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/BoundingBox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_py(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/GenderDetection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_py(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/FaceDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/BoundingBox.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_py(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/ObjectPosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_py(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/pixel_index.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kamerider_image_msgs
)
_generate_msg_py(kamerider_image_msgs
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/targets_array.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/pixel_index.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kamerider_image_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(kamerider_image_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kamerider_image_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kamerider_image_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kamerider_image_msgs_generate_messages kamerider_image_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/mission.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_py _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/BoundingBox.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_py _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/ObjectPosition.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_py _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/GenderDetection.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_py _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/FaceDetection.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_py _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/pixel_index.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_py _kamerider_image_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/targets_array.msg" NAME_WE)
add_dependencies(kamerider_image_msgs_generate_messages_py _kamerider_image_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kamerider_image_msgs_genpy)
add_dependencies(kamerider_image_msgs_genpy kamerider_image_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kamerider_image_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kamerider_image_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kamerider_image_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(kamerider_image_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(kamerider_image_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(kamerider_image_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(kamerider_image_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kamerider_image_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kamerider_image_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(kamerider_image_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(kamerider_image_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(kamerider_image_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(kamerider_image_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kamerider_image_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kamerider_image_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(kamerider_image_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(kamerider_image_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(kamerider_image_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(kamerider_image_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kamerider_image_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kamerider_image_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(kamerider_image_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(kamerider_image_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(kamerider_image_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(kamerider_image_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kamerider_image_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kamerider_image_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kamerider_image_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(kamerider_image_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(kamerider_image_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(kamerider_image_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(kamerider_image_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
