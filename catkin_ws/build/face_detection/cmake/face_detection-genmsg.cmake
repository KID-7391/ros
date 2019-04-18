# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "face_detection: 4 messages, 1 services")

set(MSG_I_FLAGS "-Iface_detection:/home/wen/rse/catkin_ws/src/face_detection/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(face_detection_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArrayStamped.msg" NAME_WE)
add_custom_target(_face_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "face_detection" "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArrayStamped.msg" "face_detection/Face:std_msgs/Header:face_detection/Rect"
)

get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArray.msg" NAME_WE)
add_custom_target(_face_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "face_detection" "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArray.msg" "face_detection/Face:face_detection/Rect"
)

get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg" NAME_WE)
add_custom_target(_face_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "face_detection" "/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg" ""
)

get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/srv/FaceRecognitionTrain.srv" NAME_WE)
add_custom_target(_face_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "face_detection" "/home/wen/rse/catkin_ws/src/face_detection/srv/FaceRecognitionTrain.srv" "sensor_msgs/Image:std_msgs/Header:face_detection/Rect"
)

get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg" NAME_WE)
add_custom_target(_face_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "face_detection" "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg" "face_detection/Rect"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/face_detection
)
_generate_msg_cpp(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArray.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg;/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/face_detection
)
_generate_msg_cpp(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/face_detection
)
_generate_msg_cpp(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/face_detection
)

### Generating Services
_generate_srv_cpp(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/srv/FaceRecognitionTrain.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/face_detection
)

### Generating Module File
_generate_module_cpp(face_detection
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/face_detection
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(face_detection_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(face_detection_generate_messages face_detection_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArrayStamped.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_cpp _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArray.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_cpp _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_cpp _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/srv/FaceRecognitionTrain.srv" NAME_WE)
add_dependencies(face_detection_generate_messages_cpp _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_cpp _face_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(face_detection_gencpp)
add_dependencies(face_detection_gencpp face_detection_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS face_detection_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/face_detection
)
_generate_msg_eus(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArray.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg;/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/face_detection
)
_generate_msg_eus(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/face_detection
)
_generate_msg_eus(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/face_detection
)

### Generating Services
_generate_srv_eus(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/srv/FaceRecognitionTrain.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/face_detection
)

### Generating Module File
_generate_module_eus(face_detection
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/face_detection
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(face_detection_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(face_detection_generate_messages face_detection_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArrayStamped.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_eus _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArray.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_eus _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_eus _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/srv/FaceRecognitionTrain.srv" NAME_WE)
add_dependencies(face_detection_generate_messages_eus _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_eus _face_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(face_detection_geneus)
add_dependencies(face_detection_geneus face_detection_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS face_detection_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/face_detection
)
_generate_msg_lisp(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArray.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg;/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/face_detection
)
_generate_msg_lisp(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/face_detection
)
_generate_msg_lisp(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/face_detection
)

### Generating Services
_generate_srv_lisp(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/srv/FaceRecognitionTrain.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/face_detection
)

### Generating Module File
_generate_module_lisp(face_detection
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/face_detection
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(face_detection_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(face_detection_generate_messages face_detection_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArrayStamped.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_lisp _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArray.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_lisp _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_lisp _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/srv/FaceRecognitionTrain.srv" NAME_WE)
add_dependencies(face_detection_generate_messages_lisp _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_lisp _face_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(face_detection_genlisp)
add_dependencies(face_detection_genlisp face_detection_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS face_detection_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/face_detection
)
_generate_msg_nodejs(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArray.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg;/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/face_detection
)
_generate_msg_nodejs(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/face_detection
)
_generate_msg_nodejs(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/face_detection
)

### Generating Services
_generate_srv_nodejs(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/srv/FaceRecognitionTrain.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/face_detection
)

### Generating Module File
_generate_module_nodejs(face_detection
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/face_detection
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(face_detection_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(face_detection_generate_messages face_detection_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArrayStamped.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_nodejs _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArray.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_nodejs _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_nodejs _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/srv/FaceRecognitionTrain.srv" NAME_WE)
add_dependencies(face_detection_generate_messages_nodejs _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_nodejs _face_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(face_detection_gennodejs)
add_dependencies(face_detection_gennodejs face_detection_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS face_detection_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_detection
)
_generate_msg_py(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArray.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg;/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_detection
)
_generate_msg_py(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_detection
)
_generate_msg_py(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg"
  "${MSG_I_FLAGS}"
  "/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_detection
)

### Generating Services
_generate_srv_py(face_detection
  "/home/wen/rse/catkin_ws/src/face_detection/srv/FaceRecognitionTrain.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_detection
)

### Generating Module File
_generate_module_py(face_detection
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_detection
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(face_detection_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(face_detection_generate_messages face_detection_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArrayStamped.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_py _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/FaceArray.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_py _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/Rect.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_py _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/srv/FaceRecognitionTrain.srv" NAME_WE)
add_dependencies(face_detection_generate_messages_py _face_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/wen/rse/catkin_ws/src/face_detection/msg/Face.msg" NAME_WE)
add_dependencies(face_detection_generate_messages_py _face_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(face_detection_genpy)
add_dependencies(face_detection_genpy face_detection_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS face_detection_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/face_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/face_detection
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(face_detection_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(face_detection_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/face_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/face_detection
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(face_detection_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(face_detection_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/face_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/face_detection
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(face_detection_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(face_detection_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/face_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/face_detection
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(face_detection_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(face_detection_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_detection)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_detection\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/face_detection
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(face_detection_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(face_detection_generate_messages_py std_msgs_generate_messages_py)
endif()
