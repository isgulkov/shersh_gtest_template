cmake_minimum_required(VERSION 2.8.7)
project(dz C CXX)

ADD_DEFINITIONS(
        -std=c++11
)

add_subdirectory(${PROJECT_SOURCE_DIR}/src)
add_subdirectory(${PROJECT_SOURCE_DIR}/ext/gtest)
add_subdirectory(${PROJECT_SOURCE_DIR}/test)
