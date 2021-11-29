cmake_minimum_required(VERSION 3.12)
project(MarshallingUnmanagedData)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)
include_directories(include)
include_directories(src)

add_executable(MarshallingUnmanagedData
        include/dnc_wrapper.h
        include/global.h
        include/Person.h
        src/CMakeLists.txt
        src/dnc_wrapper.cc)
