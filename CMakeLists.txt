# Project declaration file. Help was taken from:
# - https://stackoverflow.com/questions/28395833/using-sdl2-with-cmake
# - https://rvarago.medium.com/introduction-to-cmake-for-cpp-4c464272a239


# Declare the minimum version
cmake_minimum_required(VERSION 3.10)

# Init project name
project(DrawLines)

# Set the name of the executable
set(EXEC draw-lines)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_BUILD_TYPE Debug)

# Load in SDL
find_package(SDL2 REQUIRED)

# Set the include directories for the project
include_directories(includes ${SDL2_INCLUDE_DIRS})

# Set all the sources used for the project.
# TODO: Make this run recursively on src so I don't have to do anything else
file(GLOB SOURCES src/*.cpp src/drawing/*.cpp)

# Create the executable
add_executable(${EXEC} ${SOURCES})

# Link SDL2
target_link_libraries(${EXEC} ${SDL2_LIBRARIES})
