#!/bin/bash
[ -d output/pcd ] || mkdir -p output/pcd
[ -d output/png ] || mkdir -p output/png
[ -d CMakefile ] || mkdir CMakefile
cd CMakefile
source /opt/ros/noetic/setup.bash
cmake ..
make
