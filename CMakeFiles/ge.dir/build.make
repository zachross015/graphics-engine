# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zachary/projects/graphics-engine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zachary/Documents/Projects/graphics-engine

# Include any dependencies generated for this target.
include CMakeFiles/ge.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ge.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ge.dir/flags.make

CMakeFiles/ge.dir/src/camera.cpp.o: CMakeFiles/ge.dir/flags.make
CMakeFiles/ge.dir/src/camera.cpp.o: /home/zachary/projects/graphics-engine/src/camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zachary/Documents/Projects/graphics-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ge.dir/src/camera.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ge.dir/src/camera.cpp.o -c /home/zachary/projects/graphics-engine/src/camera.cpp

CMakeFiles/ge.dir/src/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ge.dir/src/camera.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zachary/projects/graphics-engine/src/camera.cpp > CMakeFiles/ge.dir/src/camera.cpp.i

CMakeFiles/ge.dir/src/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ge.dir/src/camera.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zachary/projects/graphics-engine/src/camera.cpp -o CMakeFiles/ge.dir/src/camera.cpp.s

CMakeFiles/ge.dir/src/framebuffer.cpp.o: CMakeFiles/ge.dir/flags.make
CMakeFiles/ge.dir/src/framebuffer.cpp.o: /home/zachary/projects/graphics-engine/src/framebuffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zachary/Documents/Projects/graphics-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ge.dir/src/framebuffer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ge.dir/src/framebuffer.cpp.o -c /home/zachary/projects/graphics-engine/src/framebuffer.cpp

CMakeFiles/ge.dir/src/framebuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ge.dir/src/framebuffer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zachary/projects/graphics-engine/src/framebuffer.cpp > CMakeFiles/ge.dir/src/framebuffer.cpp.i

CMakeFiles/ge.dir/src/framebuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ge.dir/src/framebuffer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zachary/projects/graphics-engine/src/framebuffer.cpp -o CMakeFiles/ge.dir/src/framebuffer.cpp.s

CMakeFiles/ge.dir/src/geometry.cpp.o: CMakeFiles/ge.dir/flags.make
CMakeFiles/ge.dir/src/geometry.cpp.o: /home/zachary/projects/graphics-engine/src/geometry.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zachary/Documents/Projects/graphics-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ge.dir/src/geometry.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ge.dir/src/geometry.cpp.o -c /home/zachary/projects/graphics-engine/src/geometry.cpp

CMakeFiles/ge.dir/src/geometry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ge.dir/src/geometry.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zachary/projects/graphics-engine/src/geometry.cpp > CMakeFiles/ge.dir/src/geometry.cpp.i

CMakeFiles/ge.dir/src/geometry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ge.dir/src/geometry.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zachary/projects/graphics-engine/src/geometry.cpp -o CMakeFiles/ge.dir/src/geometry.cpp.s

CMakeFiles/ge.dir/src/main.cpp.o: CMakeFiles/ge.dir/flags.make
CMakeFiles/ge.dir/src/main.cpp.o: /home/zachary/projects/graphics-engine/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zachary/Documents/Projects/graphics-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ge.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ge.dir/src/main.cpp.o -c /home/zachary/projects/graphics-engine/src/main.cpp

CMakeFiles/ge.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ge.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zachary/projects/graphics-engine/src/main.cpp > CMakeFiles/ge.dir/src/main.cpp.i

CMakeFiles/ge.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ge.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zachary/projects/graphics-engine/src/main.cpp -o CMakeFiles/ge.dir/src/main.cpp.s

CMakeFiles/ge.dir/src/math.cpp.o: CMakeFiles/ge.dir/flags.make
CMakeFiles/ge.dir/src/math.cpp.o: /home/zachary/projects/graphics-engine/src/math.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zachary/Documents/Projects/graphics-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ge.dir/src/math.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ge.dir/src/math.cpp.o -c /home/zachary/projects/graphics-engine/src/math.cpp

CMakeFiles/ge.dir/src/math.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ge.dir/src/math.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zachary/projects/graphics-engine/src/math.cpp > CMakeFiles/ge.dir/src/math.cpp.i

CMakeFiles/ge.dir/src/math.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ge.dir/src/math.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zachary/projects/graphics-engine/src/math.cpp -o CMakeFiles/ge.dir/src/math.cpp.s

CMakeFiles/ge.dir/src/transform.cpp.o: CMakeFiles/ge.dir/flags.make
CMakeFiles/ge.dir/src/transform.cpp.o: /home/zachary/projects/graphics-engine/src/transform.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zachary/Documents/Projects/graphics-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/ge.dir/src/transform.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ge.dir/src/transform.cpp.o -c /home/zachary/projects/graphics-engine/src/transform.cpp

CMakeFiles/ge.dir/src/transform.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ge.dir/src/transform.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zachary/projects/graphics-engine/src/transform.cpp > CMakeFiles/ge.dir/src/transform.cpp.i

CMakeFiles/ge.dir/src/transform.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ge.dir/src/transform.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zachary/projects/graphics-engine/src/transform.cpp -o CMakeFiles/ge.dir/src/transform.cpp.s

# Object files for target ge
ge_OBJECTS = \
"CMakeFiles/ge.dir/src/camera.cpp.o" \
"CMakeFiles/ge.dir/src/framebuffer.cpp.o" \
"CMakeFiles/ge.dir/src/geometry.cpp.o" \
"CMakeFiles/ge.dir/src/main.cpp.o" \
"CMakeFiles/ge.dir/src/math.cpp.o" \
"CMakeFiles/ge.dir/src/transform.cpp.o"

# External object files for target ge
ge_EXTERNAL_OBJECTS =

ge: CMakeFiles/ge.dir/src/camera.cpp.o
ge: CMakeFiles/ge.dir/src/framebuffer.cpp.o
ge: CMakeFiles/ge.dir/src/geometry.cpp.o
ge: CMakeFiles/ge.dir/src/main.cpp.o
ge: CMakeFiles/ge.dir/src/math.cpp.o
ge: CMakeFiles/ge.dir/src/transform.cpp.o
ge: CMakeFiles/ge.dir/build.make
ge: CMakeFiles/ge.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zachary/Documents/Projects/graphics-engine/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable ge"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ge.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ge.dir/build: ge

.PHONY : CMakeFiles/ge.dir/build

CMakeFiles/ge.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ge.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ge.dir/clean

CMakeFiles/ge.dir/depend:
	cd /home/zachary/Documents/Projects/graphics-engine && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zachary/projects/graphics-engine /home/zachary/projects/graphics-engine /home/zachary/Documents/Projects/graphics-engine /home/zachary/Documents/Projects/graphics-engine /home/zachary/Documents/Projects/graphics-engine/CMakeFiles/ge.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ge.dir/depend

