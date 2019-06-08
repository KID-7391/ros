# Install script for directory: /home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wen/rse/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kamerider_image_msgs/msg" TYPE FILE FILES
    "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/BoundingBox.msg"
    "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/FaceDetection.msg"
    "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/GenderDetection.msg"
    "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/ObjectPosition.msg"
    "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/mission.msg"
    "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/targets_array.msg"
    "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/msg/pixel_index.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kamerider_image_msgs/cmake" TYPE FILE FILES "/home/wen/rse/catkin_ws/build/kamerider_image/kamerider_image_msgs/catkin_generated/installspace/kamerider_image_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/wen/rse/catkin_ws/devel/include/kamerider_image_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/wen/rse/catkin_ws/devel/share/roseus/ros/kamerider_image_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/wen/rse/catkin_ws/devel/share/common-lisp/ros/kamerider_image_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/wen/rse/catkin_ws/devel/share/gennodejs/ros/kamerider_image_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/wen/rse/catkin_ws/devel/lib/python2.7/dist-packages/kamerider_image_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/wen/rse/catkin_ws/devel/lib/python2.7/dist-packages/kamerider_image_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/wen/rse/catkin_ws/build/kamerider_image/kamerider_image_msgs/catkin_generated/installspace/kamerider_image_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kamerider_image_msgs/cmake" TYPE FILE FILES "/home/wen/rse/catkin_ws/build/kamerider_image/kamerider_image_msgs/catkin_generated/installspace/kamerider_image_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kamerider_image_msgs/cmake" TYPE FILE FILES
    "/home/wen/rse/catkin_ws/build/kamerider_image/kamerider_image_msgs/catkin_generated/installspace/kamerider_image_msgsConfig.cmake"
    "/home/wen/rse/catkin_ws/build/kamerider_image/kamerider_image_msgs/catkin_generated/installspace/kamerider_image_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kamerider_image_msgs" TYPE FILE FILES "/home/wen/rse/catkin_ws/src/kamerider_image/kamerider_image_msgs/package.xml")
endif()

