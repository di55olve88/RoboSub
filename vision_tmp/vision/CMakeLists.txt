cmake_minimum_required(VERSION 2.8)
project( marker_detection )
find_package( OpenCV REQUIRED )
add_executable( marker_detection marker_detection.cpp )
target_link_libraries( marker_detection ${OpenCV_LIBS} )
