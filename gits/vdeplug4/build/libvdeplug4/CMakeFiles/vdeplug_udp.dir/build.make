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
CMAKE_SOURCE_DIR = /home/stefano/Documents/virtlab/gits/vdeplug4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stefano/Documents/virtlab/gits/vdeplug4/build

# Include any dependencies generated for this target.
include libvdeplug4/CMakeFiles/vdeplug_udp.dir/depend.make

# Include the progress variables for this target.
include libvdeplug4/CMakeFiles/vdeplug_udp.dir/progress.make

# Include the compile flags for this target's objects.
include libvdeplug4/CMakeFiles/vdeplug_udp.dir/flags.make

libvdeplug4/CMakeFiles/vdeplug_udp.dir/libvdeplug_udp.c.o: libvdeplug4/CMakeFiles/vdeplug_udp.dir/flags.make
libvdeplug4/CMakeFiles/vdeplug_udp.dir/libvdeplug_udp.c.o: ../libvdeplug4/libvdeplug_udp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/vdeplug4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libvdeplug4/CMakeFiles/vdeplug_udp.dir/libvdeplug_udp.c.o"
	cd /home/stefano/Documents/virtlab/gits/vdeplug4/build/libvdeplug4 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vdeplug_udp.dir/libvdeplug_udp.c.o   -c /home/stefano/Documents/virtlab/gits/vdeplug4/libvdeplug4/libvdeplug_udp.c

libvdeplug4/CMakeFiles/vdeplug_udp.dir/libvdeplug_udp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vdeplug_udp.dir/libvdeplug_udp.c.i"
	cd /home/stefano/Documents/virtlab/gits/vdeplug4/build/libvdeplug4 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/vdeplug4/libvdeplug4/libvdeplug_udp.c > CMakeFiles/vdeplug_udp.dir/libvdeplug_udp.c.i

libvdeplug4/CMakeFiles/vdeplug_udp.dir/libvdeplug_udp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vdeplug_udp.dir/libvdeplug_udp.c.s"
	cd /home/stefano/Documents/virtlab/gits/vdeplug4/build/libvdeplug4 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/vdeplug4/libvdeplug4/libvdeplug_udp.c -o CMakeFiles/vdeplug_udp.dir/libvdeplug_udp.c.s

# Object files for target vdeplug_udp
vdeplug_udp_OBJECTS = \
"CMakeFiles/vdeplug_udp.dir/libvdeplug_udp.c.o"

# External object files for target vdeplug_udp
vdeplug_udp_EXTERNAL_OBJECTS =

libvdeplug4/libvdeplug_udp.so: libvdeplug4/CMakeFiles/vdeplug_udp.dir/libvdeplug_udp.c.o
libvdeplug4/libvdeplug_udp.so: libvdeplug4/CMakeFiles/vdeplug_udp.dir/build.make
libvdeplug4/libvdeplug_udp.so: libvdeplug4/libvdeplug_mod.so.4.0.0
libvdeplug4/libvdeplug_udp.so: libvdeplug4/CMakeFiles/vdeplug_udp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stefano/Documents/virtlab/gits/vdeplug4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libvdeplug_udp.so"
	cd /home/stefano/Documents/virtlab/gits/vdeplug4/build/libvdeplug4 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vdeplug_udp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libvdeplug4/CMakeFiles/vdeplug_udp.dir/build: libvdeplug4/libvdeplug_udp.so

.PHONY : libvdeplug4/CMakeFiles/vdeplug_udp.dir/build

libvdeplug4/CMakeFiles/vdeplug_udp.dir/clean:
	cd /home/stefano/Documents/virtlab/gits/vdeplug4/build/libvdeplug4 && $(CMAKE_COMMAND) -P CMakeFiles/vdeplug_udp.dir/cmake_clean.cmake
.PHONY : libvdeplug4/CMakeFiles/vdeplug_udp.dir/clean

libvdeplug4/CMakeFiles/vdeplug_udp.dir/depend:
	cd /home/stefano/Documents/virtlab/gits/vdeplug4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stefano/Documents/virtlab/gits/vdeplug4 /home/stefano/Documents/virtlab/gits/vdeplug4/libvdeplug4 /home/stefano/Documents/virtlab/gits/vdeplug4/build /home/stefano/Documents/virtlab/gits/vdeplug4/build/libvdeplug4 /home/stefano/Documents/virtlab/gits/vdeplug4/build/libvdeplug4/CMakeFiles/vdeplug_udp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libvdeplug4/CMakeFiles/vdeplug_udp.dir/depend

