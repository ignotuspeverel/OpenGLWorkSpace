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
CMAKE_SOURCE_DIR = /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build

# Include any dependencies generated for this target.
include dep/glfw/src/CMakeFiles/glfw.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dep/glfw/src/CMakeFiles/glfw.dir/compiler_depend.make

# Include the progress variables for this target.
include dep/glfw/src/CMakeFiles/glfw.dir/progress.make

# Include the compile flags for this target's objects.
include dep/glfw/src/CMakeFiles/glfw.dir/flags.make

dep/glfw/src/CMakeFiles/glfw.dir/context.c.o: dep/glfw/src/CMakeFiles/glfw.dir/flags.make
dep/glfw/src/CMakeFiles/glfw.dir/context.c.o: /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/context.c
dep/glfw/src/CMakeFiles/glfw.dir/context.c.o: dep/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dep/glfw/src/CMakeFiles/glfw.dir/context.c.o"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -MD -MT dep/glfw/src/CMakeFiles/glfw.dir/context.c.o -MF CMakeFiles/glfw.dir/context.c.o.d -o CMakeFiles/glfw.dir/context.c.o -c /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/context.c

dep/glfw/src/CMakeFiles/glfw.dir/context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/context.c.i"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/context.c > CMakeFiles/glfw.dir/context.c.i

dep/glfw/src/CMakeFiles/glfw.dir/context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/context.c.s"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/context.c -o CMakeFiles/glfw.dir/context.c.s

dep/glfw/src/CMakeFiles/glfw.dir/init.c.o: dep/glfw/src/CMakeFiles/glfw.dir/flags.make
dep/glfw/src/CMakeFiles/glfw.dir/init.c.o: /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/init.c
dep/glfw/src/CMakeFiles/glfw.dir/init.c.o: dep/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object dep/glfw/src/CMakeFiles/glfw.dir/init.c.o"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -MD -MT dep/glfw/src/CMakeFiles/glfw.dir/init.c.o -MF CMakeFiles/glfw.dir/init.c.o.d -o CMakeFiles/glfw.dir/init.c.o -c /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/init.c

dep/glfw/src/CMakeFiles/glfw.dir/init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/init.c.i"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/init.c > CMakeFiles/glfw.dir/init.c.i

dep/glfw/src/CMakeFiles/glfw.dir/init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/init.c.s"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/init.c -o CMakeFiles/glfw.dir/init.c.s

dep/glfw/src/CMakeFiles/glfw.dir/input.c.o: dep/glfw/src/CMakeFiles/glfw.dir/flags.make
dep/glfw/src/CMakeFiles/glfw.dir/input.c.o: /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/input.c
dep/glfw/src/CMakeFiles/glfw.dir/input.c.o: dep/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object dep/glfw/src/CMakeFiles/glfw.dir/input.c.o"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -MD -MT dep/glfw/src/CMakeFiles/glfw.dir/input.c.o -MF CMakeFiles/glfw.dir/input.c.o.d -o CMakeFiles/glfw.dir/input.c.o -c /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/input.c

dep/glfw/src/CMakeFiles/glfw.dir/input.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/input.c.i"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/input.c > CMakeFiles/glfw.dir/input.c.i

dep/glfw/src/CMakeFiles/glfw.dir/input.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/input.c.s"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/input.c -o CMakeFiles/glfw.dir/input.c.s

dep/glfw/src/CMakeFiles/glfw.dir/monitor.c.o: dep/glfw/src/CMakeFiles/glfw.dir/flags.make
dep/glfw/src/CMakeFiles/glfw.dir/monitor.c.o: /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/monitor.c
dep/glfw/src/CMakeFiles/glfw.dir/monitor.c.o: dep/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object dep/glfw/src/CMakeFiles/glfw.dir/monitor.c.o"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -MD -MT dep/glfw/src/CMakeFiles/glfw.dir/monitor.c.o -MF CMakeFiles/glfw.dir/monitor.c.o.d -o CMakeFiles/glfw.dir/monitor.c.o -c /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/monitor.c

dep/glfw/src/CMakeFiles/glfw.dir/monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/monitor.c.i"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/monitor.c > CMakeFiles/glfw.dir/monitor.c.i

dep/glfw/src/CMakeFiles/glfw.dir/monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/monitor.c.s"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/monitor.c -o CMakeFiles/glfw.dir/monitor.c.s

dep/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o: dep/glfw/src/CMakeFiles/glfw.dir/flags.make
dep/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o: /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/vulkan.c
dep/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o: dep/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object dep/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -MD -MT dep/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o -MF CMakeFiles/glfw.dir/vulkan.c.o.d -o CMakeFiles/glfw.dir/vulkan.c.o -c /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/vulkan.c

dep/glfw/src/CMakeFiles/glfw.dir/vulkan.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/vulkan.c.i"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/vulkan.c > CMakeFiles/glfw.dir/vulkan.c.i

dep/glfw/src/CMakeFiles/glfw.dir/vulkan.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/vulkan.c.s"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/vulkan.c -o CMakeFiles/glfw.dir/vulkan.c.s

dep/glfw/src/CMakeFiles/glfw.dir/window.c.o: dep/glfw/src/CMakeFiles/glfw.dir/flags.make
dep/glfw/src/CMakeFiles/glfw.dir/window.c.o: /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/window.c
dep/glfw/src/CMakeFiles/glfw.dir/window.c.o: dep/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object dep/glfw/src/CMakeFiles/glfw.dir/window.c.o"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -MD -MT dep/glfw/src/CMakeFiles/glfw.dir/window.c.o -MF CMakeFiles/glfw.dir/window.c.o.d -o CMakeFiles/glfw.dir/window.c.o -c /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/window.c

dep/glfw/src/CMakeFiles/glfw.dir/window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/window.c.i"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/window.c > CMakeFiles/glfw.dir/window.c.i

dep/glfw/src/CMakeFiles/glfw.dir/window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/window.c.s"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/window.c -o CMakeFiles/glfw.dir/window.c.s

dep/glfw/src/CMakeFiles/glfw.dir/x11_init.c.o: dep/glfw/src/CMakeFiles/glfw.dir/flags.make
dep/glfw/src/CMakeFiles/glfw.dir/x11_init.c.o: /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/x11_init.c
dep/glfw/src/CMakeFiles/glfw.dir/x11_init.c.o: dep/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object dep/glfw/src/CMakeFiles/glfw.dir/x11_init.c.o"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dep/glfw/src/CMakeFiles/glfw.dir/x11_init.c.o -MF CMakeFiles/glfw.dir/x11_init.c.o.d -o CMakeFiles/glfw.dir/x11_init.c.o -c /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/x11_init.c

dep/glfw/src/CMakeFiles/glfw.dir/x11_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/x11_init.c.i"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/x11_init.c > CMakeFiles/glfw.dir/x11_init.c.i

dep/glfw/src/CMakeFiles/glfw.dir/x11_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/x11_init.c.s"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/x11_init.c -o CMakeFiles/glfw.dir/x11_init.c.s

dep/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.o: dep/glfw/src/CMakeFiles/glfw.dir/flags.make
dep/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.o: /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/x11_monitor.c
dep/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.o: dep/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object dep/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.o"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dep/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.o -MF CMakeFiles/glfw.dir/x11_monitor.c.o.d -o CMakeFiles/glfw.dir/x11_monitor.c.o -c /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/x11_monitor.c

dep/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/x11_monitor.c.i"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/x11_monitor.c > CMakeFiles/glfw.dir/x11_monitor.c.i

dep/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/x11_monitor.c.s"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/x11_monitor.c -o CMakeFiles/glfw.dir/x11_monitor.c.s

dep/glfw/src/CMakeFiles/glfw.dir/x11_window.c.o: dep/glfw/src/CMakeFiles/glfw.dir/flags.make
dep/glfw/src/CMakeFiles/glfw.dir/x11_window.c.o: /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/x11_window.c
dep/glfw/src/CMakeFiles/glfw.dir/x11_window.c.o: dep/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object dep/glfw/src/CMakeFiles/glfw.dir/x11_window.c.o"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dep/glfw/src/CMakeFiles/glfw.dir/x11_window.c.o -MF CMakeFiles/glfw.dir/x11_window.c.o.d -o CMakeFiles/glfw.dir/x11_window.c.o -c /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/x11_window.c

dep/glfw/src/CMakeFiles/glfw.dir/x11_window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/x11_window.c.i"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/x11_window.c > CMakeFiles/glfw.dir/x11_window.c.i

dep/glfw/src/CMakeFiles/glfw.dir/x11_window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/x11_window.c.s"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/x11_window.c -o CMakeFiles/glfw.dir/x11_window.c.s

dep/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.o: dep/glfw/src/CMakeFiles/glfw.dir/flags.make
dep/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.o: /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/xkb_unicode.c
dep/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.o: dep/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object dep/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.o"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dep/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.o -MF CMakeFiles/glfw.dir/xkb_unicode.c.o.d -o CMakeFiles/glfw.dir/xkb_unicode.c.o -c /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/xkb_unicode.c

dep/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/xkb_unicode.c.i"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/xkb_unicode.c > CMakeFiles/glfw.dir/xkb_unicode.c.i

dep/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/xkb_unicode.c.s"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/xkb_unicode.c -o CMakeFiles/glfw.dir/xkb_unicode.c.s

dep/glfw/src/CMakeFiles/glfw.dir/posix_time.c.o: dep/glfw/src/CMakeFiles/glfw.dir/flags.make
dep/glfw/src/CMakeFiles/glfw.dir/posix_time.c.o: /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/posix_time.c
dep/glfw/src/CMakeFiles/glfw.dir/posix_time.c.o: dep/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object dep/glfw/src/CMakeFiles/glfw.dir/posix_time.c.o"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dep/glfw/src/CMakeFiles/glfw.dir/posix_time.c.o -MF CMakeFiles/glfw.dir/posix_time.c.o.d -o CMakeFiles/glfw.dir/posix_time.c.o -c /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/posix_time.c

dep/glfw/src/CMakeFiles/glfw.dir/posix_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/posix_time.c.i"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/posix_time.c > CMakeFiles/glfw.dir/posix_time.c.i

dep/glfw/src/CMakeFiles/glfw.dir/posix_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/posix_time.c.s"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/posix_time.c -o CMakeFiles/glfw.dir/posix_time.c.s

dep/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o: dep/glfw/src/CMakeFiles/glfw.dir/flags.make
dep/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o: /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/posix_thread.c
dep/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o: dep/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object dep/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dep/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o -MF CMakeFiles/glfw.dir/posix_thread.c.o.d -o CMakeFiles/glfw.dir/posix_thread.c.o -c /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/posix_thread.c

dep/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/posix_thread.c.i"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/posix_thread.c > CMakeFiles/glfw.dir/posix_thread.c.i

dep/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/posix_thread.c.s"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/posix_thread.c -o CMakeFiles/glfw.dir/posix_thread.c.s

dep/glfw/src/CMakeFiles/glfw.dir/glx_context.c.o: dep/glfw/src/CMakeFiles/glfw.dir/flags.make
dep/glfw/src/CMakeFiles/glfw.dir/glx_context.c.o: /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/glx_context.c
dep/glfw/src/CMakeFiles/glfw.dir/glx_context.c.o: dep/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object dep/glfw/src/CMakeFiles/glfw.dir/glx_context.c.o"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dep/glfw/src/CMakeFiles/glfw.dir/glx_context.c.o -MF CMakeFiles/glfw.dir/glx_context.c.o.d -o CMakeFiles/glfw.dir/glx_context.c.o -c /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/glx_context.c

dep/glfw/src/CMakeFiles/glfw.dir/glx_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/glx_context.c.i"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/glx_context.c > CMakeFiles/glfw.dir/glx_context.c.i

dep/glfw/src/CMakeFiles/glfw.dir/glx_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/glx_context.c.s"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/glx_context.c -o CMakeFiles/glfw.dir/glx_context.c.s

dep/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o: dep/glfw/src/CMakeFiles/glfw.dir/flags.make
dep/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o: /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/egl_context.c
dep/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o: dep/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object dep/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -MD -MT dep/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o -MF CMakeFiles/glfw.dir/egl_context.c.o.d -o CMakeFiles/glfw.dir/egl_context.c.o -c /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/egl_context.c

dep/glfw/src/CMakeFiles/glfw.dir/egl_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/egl_context.c.i"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/egl_context.c > CMakeFiles/glfw.dir/egl_context.c.i

dep/glfw/src/CMakeFiles/glfw.dir/egl_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/egl_context.c.s"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/egl_context.c -o CMakeFiles/glfw.dir/egl_context.c.s

dep/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o: dep/glfw/src/CMakeFiles/glfw.dir/flags.make
dep/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o: /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/osmesa_context.c
dep/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o: dep/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object dep/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -MD -MT dep/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o -MF CMakeFiles/glfw.dir/osmesa_context.c.o.d -o CMakeFiles/glfw.dir/osmesa_context.c.o -c /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/osmesa_context.c

dep/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/osmesa_context.c.i"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -E /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/osmesa_context.c > CMakeFiles/glfw.dir/osmesa_context.c.i

dep/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/osmesa_context.c.s"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -Wdeclaration-after-statement -S /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/osmesa_context.c -o CMakeFiles/glfw.dir/osmesa_context.c.s

dep/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.o: dep/glfw/src/CMakeFiles/glfw.dir/flags.make
dep/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.o: /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/linux_joystick.c
dep/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.o: dep/glfw/src/CMakeFiles/glfw.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object dep/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.o"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT dep/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.o -MF CMakeFiles/glfw.dir/linux_joystick.c.o.d -o CMakeFiles/glfw.dir/linux_joystick.c.o -c /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/linux_joystick.c

dep/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw.dir/linux_joystick.c.i"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/linux_joystick.c > CMakeFiles/glfw.dir/linux_joystick.c.i

dep/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw.dir/linux_joystick.c.s"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src/linux_joystick.c -o CMakeFiles/glfw.dir/linux_joystick.c.s

# Object files for target glfw
glfw_OBJECTS = \
"CMakeFiles/glfw.dir/context.c.o" \
"CMakeFiles/glfw.dir/init.c.o" \
"CMakeFiles/glfw.dir/input.c.o" \
"CMakeFiles/glfw.dir/monitor.c.o" \
"CMakeFiles/glfw.dir/vulkan.c.o" \
"CMakeFiles/glfw.dir/window.c.o" \
"CMakeFiles/glfw.dir/x11_init.c.o" \
"CMakeFiles/glfw.dir/x11_monitor.c.o" \
"CMakeFiles/glfw.dir/x11_window.c.o" \
"CMakeFiles/glfw.dir/xkb_unicode.c.o" \
"CMakeFiles/glfw.dir/posix_time.c.o" \
"CMakeFiles/glfw.dir/posix_thread.c.o" \
"CMakeFiles/glfw.dir/glx_context.c.o" \
"CMakeFiles/glfw.dir/egl_context.c.o" \
"CMakeFiles/glfw.dir/osmesa_context.c.o" \
"CMakeFiles/glfw.dir/linux_joystick.c.o"

# External object files for target glfw
glfw_EXTERNAL_OBJECTS =

dep/glfw/src/libglfw3.a: dep/glfw/src/CMakeFiles/glfw.dir/context.c.o
dep/glfw/src/libglfw3.a: dep/glfw/src/CMakeFiles/glfw.dir/init.c.o
dep/glfw/src/libglfw3.a: dep/glfw/src/CMakeFiles/glfw.dir/input.c.o
dep/glfw/src/libglfw3.a: dep/glfw/src/CMakeFiles/glfw.dir/monitor.c.o
dep/glfw/src/libglfw3.a: dep/glfw/src/CMakeFiles/glfw.dir/vulkan.c.o
dep/glfw/src/libglfw3.a: dep/glfw/src/CMakeFiles/glfw.dir/window.c.o
dep/glfw/src/libglfw3.a: dep/glfw/src/CMakeFiles/glfw.dir/x11_init.c.o
dep/glfw/src/libglfw3.a: dep/glfw/src/CMakeFiles/glfw.dir/x11_monitor.c.o
dep/glfw/src/libglfw3.a: dep/glfw/src/CMakeFiles/glfw.dir/x11_window.c.o
dep/glfw/src/libglfw3.a: dep/glfw/src/CMakeFiles/glfw.dir/xkb_unicode.c.o
dep/glfw/src/libglfw3.a: dep/glfw/src/CMakeFiles/glfw.dir/posix_time.c.o
dep/glfw/src/libglfw3.a: dep/glfw/src/CMakeFiles/glfw.dir/posix_thread.c.o
dep/glfw/src/libglfw3.a: dep/glfw/src/CMakeFiles/glfw.dir/glx_context.c.o
dep/glfw/src/libglfw3.a: dep/glfw/src/CMakeFiles/glfw.dir/egl_context.c.o
dep/glfw/src/libglfw3.a: dep/glfw/src/CMakeFiles/glfw.dir/osmesa_context.c.o
dep/glfw/src/libglfw3.a: dep/glfw/src/CMakeFiles/glfw.dir/linux_joystick.c.o
dep/glfw/src/libglfw3.a: dep/glfw/src/CMakeFiles/glfw.dir/build.make
dep/glfw/src/libglfw3.a: dep/glfw/src/CMakeFiles/glfw.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking C static library libglfw3.a"
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && $(CMAKE_COMMAND) -P CMakeFiles/glfw.dir/cmake_clean_target.cmake
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glfw.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dep/glfw/src/CMakeFiles/glfw.dir/build: dep/glfw/src/libglfw3.a
.PHONY : dep/glfw/src/CMakeFiles/glfw.dir/build

dep/glfw/src/CMakeFiles/glfw.dir/clean:
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src && $(CMAKE_COMMAND) -P CMakeFiles/glfw.dir/cmake_clean.cmake
.PHONY : dep/glfw/src/CMakeFiles/glfw.dir/clean

dep/glfw/src/CMakeFiles/glfw.dir/depend:
	cd /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/dep/glfw/src /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src /mnt/d/slam/postgraduate/gde1smt1/CG/OpenGL/RigidSim/build/dep/glfw/src/CMakeFiles/glfw.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dep/glfw/src/CMakeFiles/glfw.dir/depend

