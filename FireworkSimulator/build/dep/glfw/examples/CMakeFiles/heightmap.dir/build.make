# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /home/thefrogignotus/miniconda3/envs/f2nerf/lib/python3.8/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/thefrogignotus/miniconda3/envs/f2nerf/lib/python3.8/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/build

# Include any dependencies generated for this target.
include dep/glfw/examples/CMakeFiles/heightmap.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dep/glfw/examples/CMakeFiles/heightmap.dir/compiler_depend.make

# Include the progress variables for this target.
include dep/glfw/examples/CMakeFiles/heightmap.dir/progress.make

# Include the compile flags for this target's objects.
include dep/glfw/examples/CMakeFiles/heightmap.dir/flags.make

dep/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.o: dep/glfw/examples/CMakeFiles/heightmap.dir/flags.make
dep/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.o: /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/dep/glfw/examples/heightmap.c
dep/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.o: dep/glfw/examples/CMakeFiles/heightmap.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dep/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.o"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/build/dep/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dep/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.o -MF CMakeFiles/heightmap.dir/heightmap.c.o.d -o CMakeFiles/heightmap.dir/heightmap.c.o -c /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/dep/glfw/examples/heightmap.c

dep/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/heightmap.dir/heightmap.c.i"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/build/dep/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/dep/glfw/examples/heightmap.c > CMakeFiles/heightmap.dir/heightmap.c.i

dep/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/heightmap.dir/heightmap.c.s"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/build/dep/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/dep/glfw/examples/heightmap.c -o CMakeFiles/heightmap.dir/heightmap.c.s

dep/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad_gl.c.o: dep/glfw/examples/CMakeFiles/heightmap.dir/flags.make
dep/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad_gl.c.o: /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/dep/glfw/deps/glad_gl.c
dep/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad_gl.c.o: dep/glfw/examples/CMakeFiles/heightmap.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object dep/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad_gl.c.o"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/build/dep/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dep/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad_gl.c.o -MF CMakeFiles/heightmap.dir/__/deps/glad_gl.c.o.d -o CMakeFiles/heightmap.dir/__/deps/glad_gl.c.o -c /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/dep/glfw/deps/glad_gl.c

dep/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/heightmap.dir/__/deps/glad_gl.c.i"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/build/dep/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/dep/glfw/deps/glad_gl.c > CMakeFiles/heightmap.dir/__/deps/glad_gl.c.i

dep/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/heightmap.dir/__/deps/glad_gl.c.s"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/build/dep/glfw/examples && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/dep/glfw/deps/glad_gl.c -o CMakeFiles/heightmap.dir/__/deps/glad_gl.c.s

# Object files for target heightmap
heightmap_OBJECTS = \
"CMakeFiles/heightmap.dir/heightmap.c.o" \
"CMakeFiles/heightmap.dir/__/deps/glad_gl.c.o"

# External object files for target heightmap
heightmap_EXTERNAL_OBJECTS =

dep/glfw/examples/heightmap: dep/glfw/examples/CMakeFiles/heightmap.dir/heightmap.c.o
dep/glfw/examples/heightmap: dep/glfw/examples/CMakeFiles/heightmap.dir/__/deps/glad_gl.c.o
dep/glfw/examples/heightmap: dep/glfw/examples/CMakeFiles/heightmap.dir/build.make
dep/glfw/examples/heightmap: dep/glfw/src/libglfw3.a
dep/glfw/examples/heightmap: /usr/lib/x86_64-linux-gnu/libm.so
dep/glfw/examples/heightmap: /usr/lib/x86_64-linux-gnu/librt.so
dep/glfw/examples/heightmap: /usr/lib/x86_64-linux-gnu/libm.so
dep/glfw/examples/heightmap: /usr/lib/x86_64-linux-gnu/libX11.so
dep/glfw/examples/heightmap: dep/glfw/examples/CMakeFiles/heightmap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable heightmap"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/build/dep/glfw/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/heightmap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dep/glfw/examples/CMakeFiles/heightmap.dir/build: dep/glfw/examples/heightmap
.PHONY : dep/glfw/examples/CMakeFiles/heightmap.dir/build

dep/glfw/examples/CMakeFiles/heightmap.dir/clean:
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/build/dep/glfw/examples && $(CMAKE_COMMAND) -P CMakeFiles/heightmap.dir/cmake_clean.cmake
.PHONY : dep/glfw/examples/CMakeFiles/heightmap.dir/clean

dep/glfw/examples/CMakeFiles/heightmap.dir/depend:
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/dep/glfw/examples /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/build /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/build/dep/glfw/examples /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/FireWorkSimulator/build/dep/glfw/examples/CMakeFiles/heightmap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dep/glfw/examples/CMakeFiles/heightmap.dir/depend

