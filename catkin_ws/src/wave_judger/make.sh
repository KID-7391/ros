#!/bin/sh
if [ ! -x "bin" ]; then
  mkdir bin
fi

cp /home/wen/rse/catkin_ws/src/wave_judger/cmakelists.txt /home/wen/rse/catkin_ws/src/wave_judger/CMakeLists.txt
openpose_dir="/home/wen/rse/openpose/openpose-master"
make -C "${openpose_dir}/build" -j8
echo "cmake_minimum_required(VERSION 2.8.3)\n">/home/wen/rse/catkin_ws/src/wave_judger/CMakeLists.txt
echo "execute_process(COMMAND sh \${CMAKE_CURRENT_SOURCE_DIR}/make.sh)\n">>/home/wen/rse/catkin_ws/src/wave_judger/CMakeLists.txt

echo "Done."
