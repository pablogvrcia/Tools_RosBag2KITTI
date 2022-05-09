cmake_minimum_required (VERSION 3.0.2)   
project(pcd2bin)                                        #�����Ĺ�����

## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++14)
set(CMAKE_BUILD_TYPE "Debug")

find_package(PCL 1.10 REQUIRED)  

include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARIES_DIRS})
add_definitions(${PCL_DEFINITIONS})


add_executable(pcd2bin pcd2bin.cpp)

target_link_libraries(pcd2bin ${PCL_COMMON_LIBRARIES} ${PCL_IO_LIBRARIES})