#!/bin/bash
rm -r CMakeFile
mkdir CMakefile
cd CMakefile
source /opt/ros/noetic/setup.bash
cmake ..
make
