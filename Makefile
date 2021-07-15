# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/zachary/Documents/Projects/graphics-engine/CMakeFiles /home/zachary/Documents/Projects/graphics-engine/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/zachary/Documents/Projects/graphics-engine/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named draw-lines

# Build rule for target.
draw-lines: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 draw-lines
.PHONY : draw-lines

# fast build rule for target.
draw-lines/fast:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/build
.PHONY : draw-lines/fast

src/camera.o: src/camera.cpp.o

.PHONY : src/camera.o

# target to build an object file
src/camera.cpp.o:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/src/camera.cpp.o
.PHONY : src/camera.cpp.o

src/camera.i: src/camera.cpp.i

.PHONY : src/camera.i

# target to preprocess a source file
src/camera.cpp.i:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/src/camera.cpp.i
.PHONY : src/camera.cpp.i

src/camera.s: src/camera.cpp.s

.PHONY : src/camera.s

# target to generate assembly for a file
src/camera.cpp.s:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/src/camera.cpp.s
.PHONY : src/camera.cpp.s

src/framebuffer.o: src/framebuffer.cpp.o

.PHONY : src/framebuffer.o

# target to build an object file
src/framebuffer.cpp.o:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/src/framebuffer.cpp.o
.PHONY : src/framebuffer.cpp.o

src/framebuffer.i: src/framebuffer.cpp.i

.PHONY : src/framebuffer.i

# target to preprocess a source file
src/framebuffer.cpp.i:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/src/framebuffer.cpp.i
.PHONY : src/framebuffer.cpp.i

src/framebuffer.s: src/framebuffer.cpp.s

.PHONY : src/framebuffer.s

# target to generate assembly for a file
src/framebuffer.cpp.s:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/src/framebuffer.cpp.s
.PHONY : src/framebuffer.cpp.s

src/geometry.o: src/geometry.cpp.o

.PHONY : src/geometry.o

# target to build an object file
src/geometry.cpp.o:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/src/geometry.cpp.o
.PHONY : src/geometry.cpp.o

src/geometry.i: src/geometry.cpp.i

.PHONY : src/geometry.i

# target to preprocess a source file
src/geometry.cpp.i:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/src/geometry.cpp.i
.PHONY : src/geometry.cpp.i

src/geometry.s: src/geometry.cpp.s

.PHONY : src/geometry.s

# target to generate assembly for a file
src/geometry.cpp.s:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/src/geometry.cpp.s
.PHONY : src/geometry.cpp.s

src/main.o: src/main.cpp.o

.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i

.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s

.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

src/math.o: src/math.cpp.o

.PHONY : src/math.o

# target to build an object file
src/math.cpp.o:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/src/math.cpp.o
.PHONY : src/math.cpp.o

src/math.i: src/math.cpp.i

.PHONY : src/math.i

# target to preprocess a source file
src/math.cpp.i:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/src/math.cpp.i
.PHONY : src/math.cpp.i

src/math.s: src/math.cpp.s

.PHONY : src/math.s

# target to generate assembly for a file
src/math.cpp.s:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/src/math.cpp.s
.PHONY : src/math.cpp.s

src/transform.o: src/transform.cpp.o

.PHONY : src/transform.o

# target to build an object file
src/transform.cpp.o:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/src/transform.cpp.o
.PHONY : src/transform.cpp.o

src/transform.i: src/transform.cpp.i

.PHONY : src/transform.i

# target to preprocess a source file
src/transform.cpp.i:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/src/transform.cpp.i
.PHONY : src/transform.cpp.i

src/transform.s: src/transform.cpp.s

.PHONY : src/transform.s

# target to generate assembly for a file
src/transform.cpp.s:
	$(MAKE) -f CMakeFiles/draw-lines.dir/build.make CMakeFiles/draw-lines.dir/src/transform.cpp.s
.PHONY : src/transform.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... draw-lines"
	@echo "... src/camera.o"
	@echo "... src/camera.i"
	@echo "... src/camera.s"
	@echo "... src/framebuffer.o"
	@echo "... src/framebuffer.i"
	@echo "... src/framebuffer.s"
	@echo "... src/geometry.o"
	@echo "... src/geometry.i"
	@echo "... src/geometry.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/math.o"
	@echo "... src/math.i"
	@echo "... src/math.s"
	@echo "... src/transform.o"
	@echo "... src/transform.i"
	@echo "... src/transform.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

