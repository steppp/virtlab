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
CMAKE_SOURCE_DIR = /home/stefano/Documents/virtlab/gits/vuos

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stefano/Documents/virtlab/gits/vuos/build

# Include any dependencies generated for this target.
include vufuse/CMakeFiles/vufuse.dir/depend.make

# Include the progress variables for this target.
include vufuse/CMakeFiles/vufuse.dir/progress.make

# Include the compile flags for this target's objects.
include vufuse/CMakeFiles/vufuse.dir/flags.make

vufuse/CMakeFiles/vufuse.dir/fuse_opt.c.o: vufuse/CMakeFiles/vufuse.dir/flags.make
vufuse/CMakeFiles/vufuse.dir/fuse_opt.c.o: ../vufuse/fuse_opt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object vufuse/CMakeFiles/vufuse.dir/fuse_opt.c.o"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vufuse.dir/fuse_opt.c.o   -c /home/stefano/Documents/virtlab/gits/vuos/vufuse/fuse_opt.c

vufuse/CMakeFiles/vufuse.dir/fuse_opt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vufuse.dir/fuse_opt.c.i"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/vuos/vufuse/fuse_opt.c > CMakeFiles/vufuse.dir/fuse_opt.c.i

vufuse/CMakeFiles/vufuse.dir/fuse_opt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vufuse.dir/fuse_opt.c.s"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/vuos/vufuse/fuse_opt.c -o CMakeFiles/vufuse.dir/fuse_opt.c.s

vufuse/CMakeFiles/vufuse.dir/vufuse.c.o: vufuse/CMakeFiles/vufuse.dir/flags.make
vufuse/CMakeFiles/vufuse.dir/vufuse.c.o: ../vufuse/vufuse.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object vufuse/CMakeFiles/vufuse.dir/vufuse.c.o"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vufuse.dir/vufuse.c.o   -c /home/stefano/Documents/virtlab/gits/vuos/vufuse/vufuse.c

vufuse/CMakeFiles/vufuse.dir/vufuse.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vufuse.dir/vufuse.c.i"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/vuos/vufuse/vufuse.c > CMakeFiles/vufuse.dir/vufuse.c.i

vufuse/CMakeFiles/vufuse.dir/vufuse.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vufuse.dir/vufuse.c.s"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/vuos/vufuse/vufuse.c -o CMakeFiles/vufuse.dir/vufuse.c.s

vufuse/CMakeFiles/vufuse.dir/vufuse_default_ops.c.o: vufuse/CMakeFiles/vufuse.dir/flags.make
vufuse/CMakeFiles/vufuse.dir/vufuse_default_ops.c.o: ../vufuse/vufuse_default_ops.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object vufuse/CMakeFiles/vufuse.dir/vufuse_default_ops.c.o"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vufuse.dir/vufuse_default_ops.c.o   -c /home/stefano/Documents/virtlab/gits/vuos/vufuse/vufuse_default_ops.c

vufuse/CMakeFiles/vufuse.dir/vufuse_default_ops.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vufuse.dir/vufuse_default_ops.c.i"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/vuos/vufuse/vufuse_default_ops.c > CMakeFiles/vufuse.dir/vufuse_default_ops.c.i

vufuse/CMakeFiles/vufuse.dir/vufuse_default_ops.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vufuse.dir/vufuse_default_ops.c.s"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/vuos/vufuse/vufuse_default_ops.c -o CMakeFiles/vufuse.dir/vufuse_default_ops.c.s

vufuse/CMakeFiles/vufuse.dir/vufuse_node.c.o: vufuse/CMakeFiles/vufuse.dir/flags.make
vufuse/CMakeFiles/vufuse.dir/vufuse_node.c.o: ../vufuse/vufuse_node.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object vufuse/CMakeFiles/vufuse.dir/vufuse_node.c.o"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vufuse.dir/vufuse_node.c.o   -c /home/stefano/Documents/virtlab/gits/vuos/vufuse/vufuse_node.c

vufuse/CMakeFiles/vufuse.dir/vufuse_node.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vufuse.dir/vufuse_node.c.i"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/vuos/vufuse/vufuse_node.c > CMakeFiles/vufuse.dir/vufuse_node.c.i

vufuse/CMakeFiles/vufuse.dir/vufuse_node.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vufuse.dir/vufuse_node.c.s"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/vuos/vufuse/vufuse_node.c -o CMakeFiles/vufuse.dir/vufuse_node.c.s

vufuse/CMakeFiles/vufuse.dir/vufuse_startmain.c.o: vufuse/CMakeFiles/vufuse.dir/flags.make
vufuse/CMakeFiles/vufuse.dir/vufuse_startmain.c.o: ../vufuse/vufuse_startmain.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object vufuse/CMakeFiles/vufuse.dir/vufuse_startmain.c.o"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vufuse.dir/vufuse_startmain.c.o   -c /home/stefano/Documents/virtlab/gits/vuos/vufuse/vufuse_startmain.c

vufuse/CMakeFiles/vufuse.dir/vufuse_startmain.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vufuse.dir/vufuse_startmain.c.i"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/vuos/vufuse/vufuse_startmain.c > CMakeFiles/vufuse.dir/vufuse_startmain.c.i

vufuse/CMakeFiles/vufuse.dir/vufuse_startmain.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vufuse.dir/vufuse_startmain.c.s"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/vuos/vufuse/vufuse_startmain.c -o CMakeFiles/vufuse.dir/vufuse_startmain.c.s

vufuse/CMakeFiles/vufuse.dir/vufuseop.c.o: vufuse/CMakeFiles/vufuse.dir/flags.make
vufuse/CMakeFiles/vufuse.dir/vufuseop.c.o: ../vufuse/vufuseop.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object vufuse/CMakeFiles/vufuse.dir/vufuseop.c.o"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vufuse.dir/vufuseop.c.o   -c /home/stefano/Documents/virtlab/gits/vuos/vufuse/vufuseop.c

vufuse/CMakeFiles/vufuse.dir/vufuseop.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vufuse.dir/vufuseop.c.i"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/vuos/vufuse/vufuseop.c > CMakeFiles/vufuse.dir/vufuseop.c.i

vufuse/CMakeFiles/vufuse.dir/vufuseop.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vufuse.dir/vufuseop.c.s"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/vuos/vufuse/vufuseop.c -o CMakeFiles/vufuse.dir/vufuseop.c.s

# Object files for target vufuse
vufuse_OBJECTS = \
"CMakeFiles/vufuse.dir/fuse_opt.c.o" \
"CMakeFiles/vufuse.dir/vufuse.c.o" \
"CMakeFiles/vufuse.dir/vufuse_default_ops.c.o" \
"CMakeFiles/vufuse.dir/vufuse_node.c.o" \
"CMakeFiles/vufuse.dir/vufuse_startmain.c.o" \
"CMakeFiles/vufuse.dir/vufuseop.c.o"

# External object files for target vufuse
vufuse_EXTERNAL_OBJECTS =

vufuse/vufuse.so: vufuse/CMakeFiles/vufuse.dir/fuse_opt.c.o
vufuse/vufuse.so: vufuse/CMakeFiles/vufuse.dir/vufuse.c.o
vufuse/vufuse.so: vufuse/CMakeFiles/vufuse.dir/vufuse_default_ops.c.o
vufuse/vufuse.so: vufuse/CMakeFiles/vufuse.dir/vufuse_node.c.o
vufuse/vufuse.so: vufuse/CMakeFiles/vufuse.dir/vufuse_startmain.c.o
vufuse/vufuse.so: vufuse/CMakeFiles/vufuse.dir/vufuseop.c.o
vufuse/vufuse.so: vufuse/CMakeFiles/vufuse.dir/build.make
vufuse/vufuse.so: vufuse/CMakeFiles/vufuse.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C shared library vufuse.so"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vufuse.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vufuse/CMakeFiles/vufuse.dir/build: vufuse/vufuse.so

.PHONY : vufuse/CMakeFiles/vufuse.dir/build

vufuse/CMakeFiles/vufuse.dir/clean:
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufuse && $(CMAKE_COMMAND) -P CMakeFiles/vufuse.dir/cmake_clean.cmake
.PHONY : vufuse/CMakeFiles/vufuse.dir/clean

vufuse/CMakeFiles/vufuse.dir/depend:
	cd /home/stefano/Documents/virtlab/gits/vuos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stefano/Documents/virtlab/gits/vuos /home/stefano/Documents/virtlab/gits/vuos/vufuse /home/stefano/Documents/virtlab/gits/vuos/build /home/stefano/Documents/virtlab/gits/vuos/build/vufuse /home/stefano/Documents/virtlab/gits/vuos/build/vufuse/CMakeFiles/vufuse.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vufuse/CMakeFiles/vufuse.dir/depend

