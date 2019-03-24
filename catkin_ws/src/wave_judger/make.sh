#!/bin/sh
if [ ! -x "bin" ]; then
  mkdir bin
fi

cp cmakelists.txt CMakeLists.txt
openpose_dir="/home/wen/rse/openpose/openpose-master"
make -C "${openpose_dir}/build" -j8
echo "cmake_minimum_required(VERSION 2.8.3)\n">CMakeLists.txt
echo "execute_process(COMMAND sh make.sh)\n">>CMakeLists.txt

echo "Done."
