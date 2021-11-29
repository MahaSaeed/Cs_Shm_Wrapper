cmake_minimum_required(VERSION 3.12)
project(dncwrapper)

# Find source files
file(GLOB SOURCES *.cc)

# Include header files
include_directories(../include)

# Create shared library
add_library(${PROJECT_NAME} SHARED ${SOURCES})

# Install library
install(TARGETS ${PROJECT_NAME} DESTINATION lib/${PROJECT_NAME})

# Install library headers
file(GLOB HEADERS include/*.h)
install(FILES ${HEADERS} DESTINATION include/${PROJECT_NAME})