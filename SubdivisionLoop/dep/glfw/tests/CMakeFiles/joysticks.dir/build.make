# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/amal/Desktop/TP01-Geometry

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/amal/Desktop/TP01-Geometry

# Include any dependencies generated for this target.
include dep/glfw/tests/CMakeFiles/joysticks.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dep/glfw/tests/CMakeFiles/joysticks.dir/compiler_depend.make

# Include the progress variables for this target.
include dep/glfw/tests/CMakeFiles/joysticks.dir/progress.make

# Include the compile flags for this target's objects.
include dep/glfw/tests/CMakeFiles/joysticks.dir/flags.make

dep/glfw/tests/CMakeFiles/joysticks.dir/joysticks.c.o: dep/glfw/tests/CMakeFiles/joysticks.dir/flags.make
dep/glfw/tests/CMakeFiles/joysticks.dir/joysticks.c.o: dep/glfw/tests/joysticks.c
dep/glfw/tests/CMakeFiles/joysticks.dir/joysticks.c.o: dep/glfw/tests/CMakeFiles/joysticks.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amal/Desktop/TP01-Geometry/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dep/glfw/tests/CMakeFiles/joysticks.dir/joysticks.c.o"
	cd /home/amal/Desktop/TP01-Geometry/dep/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dep/glfw/tests/CMakeFiles/joysticks.dir/joysticks.c.o -MF CMakeFiles/joysticks.dir/joysticks.c.o.d -o CMakeFiles/joysticks.dir/joysticks.c.o -c /home/amal/Desktop/TP01-Geometry/dep/glfw/tests/joysticks.c

dep/glfw/tests/CMakeFiles/joysticks.dir/joysticks.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/joysticks.dir/joysticks.c.i"
	cd /home/amal/Desktop/TP01-Geometry/dep/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amal/Desktop/TP01-Geometry/dep/glfw/tests/joysticks.c > CMakeFiles/joysticks.dir/joysticks.c.i

dep/glfw/tests/CMakeFiles/joysticks.dir/joysticks.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/joysticks.dir/joysticks.c.s"
	cd /home/amal/Desktop/TP01-Geometry/dep/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amal/Desktop/TP01-Geometry/dep/glfw/tests/joysticks.c -o CMakeFiles/joysticks.dir/joysticks.c.s

dep/glfw/tests/CMakeFiles/joysticks.dir/__/deps/glad_gl.c.o: dep/glfw/tests/CMakeFiles/joysticks.dir/flags.make
dep/glfw/tests/CMakeFiles/joysticks.dir/__/deps/glad_gl.c.o: dep/glfw/deps/glad_gl.c
dep/glfw/tests/CMakeFiles/joysticks.dir/__/deps/glad_gl.c.o: dep/glfw/tests/CMakeFiles/joysticks.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/amal/Desktop/TP01-Geometry/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object dep/glfw/tests/CMakeFiles/joysticks.dir/__/deps/glad_gl.c.o"
	cd /home/amal/Desktop/TP01-Geometry/dep/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dep/glfw/tests/CMakeFiles/joysticks.dir/__/deps/glad_gl.c.o -MF CMakeFiles/joysticks.dir/__/deps/glad_gl.c.o.d -o CMakeFiles/joysticks.dir/__/deps/glad_gl.c.o -c /home/amal/Desktop/TP01-Geometry/dep/glfw/deps/glad_gl.c

dep/glfw/tests/CMakeFiles/joysticks.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/joysticks.dir/__/deps/glad_gl.c.i"
	cd /home/amal/Desktop/TP01-Geometry/dep/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/amal/Desktop/TP01-Geometry/dep/glfw/deps/glad_gl.c > CMakeFiles/joysticks.dir/__/deps/glad_gl.c.i

dep/glfw/tests/CMakeFiles/joysticks.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/joysticks.dir/__/deps/glad_gl.c.s"
	cd /home/amal/Desktop/TP01-Geometry/dep/glfw/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/amal/Desktop/TP01-Geometry/dep/glfw/deps/glad_gl.c -o CMakeFiles/joysticks.dir/__/deps/glad_gl.c.s

# Object files for target joysticks
joysticks_OBJECTS = \
"CMakeFiles/joysticks.dir/joysticks.c.o" \
"CMakeFiles/joysticks.dir/__/deps/glad_gl.c.o"

# External object files for target joysticks
joysticks_EXTERNAL_OBJECTS =

dep/glfw/tests/joysticks: dep/glfw/tests/CMakeFiles/joysticks.dir/joysticks.c.o
dep/glfw/tests/joysticks: dep/glfw/tests/CMakeFiles/joysticks.dir/__/deps/glad_gl.c.o
dep/glfw/tests/joysticks: dep/glfw/tests/CMakeFiles/joysticks.dir/build.make
dep/glfw/tests/joysticks: dep/glfw/src/libglfw3.a
dep/glfw/tests/joysticks: /usr/lib/x86_64-linux-gnu/libm.so
dep/glfw/tests/joysticks: /usr/lib/x86_64-linux-gnu/librt.a
dep/glfw/tests/joysticks: /usr/lib/x86_64-linux-gnu/libm.so
dep/glfw/tests/joysticks: /usr/lib/x86_64-linux-gnu/libX11.so
dep/glfw/tests/joysticks: dep/glfw/tests/CMakeFiles/joysticks.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/amal/Desktop/TP01-Geometry/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable joysticks"
	cd /home/amal/Desktop/TP01-Geometry/dep/glfw/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/joysticks.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dep/glfw/tests/CMakeFiles/joysticks.dir/build: dep/glfw/tests/joysticks
.PHONY : dep/glfw/tests/CMakeFiles/joysticks.dir/build

dep/glfw/tests/CMakeFiles/joysticks.dir/clean:
	cd /home/amal/Desktop/TP01-Geometry/dep/glfw/tests && $(CMAKE_COMMAND) -P CMakeFiles/joysticks.dir/cmake_clean.cmake
.PHONY : dep/glfw/tests/CMakeFiles/joysticks.dir/clean

dep/glfw/tests/CMakeFiles/joysticks.dir/depend:
	cd /home/amal/Desktop/TP01-Geometry && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/amal/Desktop/TP01-Geometry /home/amal/Desktop/TP01-Geometry/dep/glfw/tests /home/amal/Desktop/TP01-Geometry /home/amal/Desktop/TP01-Geometry/dep/glfw/tests /home/amal/Desktop/TP01-Geometry/dep/glfw/tests/CMakeFiles/joysticks.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dep/glfw/tests/CMakeFiles/joysticks.dir/depend

