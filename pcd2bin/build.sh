#!/bin/bash
[ -d CMakefile ] || mkdir CMakefile
cd CMakefile
source /opt/ros/noetic/setup.bash
cmake ..
make
