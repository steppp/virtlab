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
CMAKE_SOURCE_DIR = /home/stefano/Documents/virtlab/gits/libvdeslirp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stefano/Documents/virtlab/gits/libvdeslirp/build

# Include any dependencies generated for this target.
include CMakeFiles/vdeslirp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/vdeslirp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vdeslirp.dir/flags.make

CMakeFiles/vdeslirp.dir/libvdeslirp.c.o: CMakeFiles/vdeslirp.dir/flags.make
CMakeFiles/vdeslirp.dir/libvdeslirp.c.o: ../libvdeslirp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/libvdeslirp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/vdeslirp.dir/libvdeslirp.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vdeslirp.dir/libvdeslirp.c.o   -c /home/stefano/Documents/virtlab/gits/libvdeslirp/libvdeslirp.c

CMakeFiles/vdeslirp.dir/libvdeslirp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vdeslirp.dir/libvdeslirp.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/libvdeslirp/libvdeslirp.c > CMakeFiles/vdeslirp.dir/libvdeslirp.c.i

CMakeFiles/vdeslirp.dir/libvdeslirp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vdeslirp.dir/libvdeslirp.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/libvdeslirp/libvdeslirp.c -o CMakeFiles/vdeslirp.dir/libvdeslirp.c.s

# Object files for target vdeslirp
vdeslirp_OBJECTS = \
"CMakeFiles/vdeslirp.dir/libvdeslirp.c.o"

# External object files for target vdeslirp
vdeslirp_EXTERNAL_OBJECTS =

libvdeslirp.so.0.1.0: CMakeFiles/vdeslirp.dir/libvdeslirp.c.o
libvdeslirp.so.0.1.0: CMakeFiles/vdeslirp.dir/build.make
libvdeslirp.so.0.1.0: CMakeFiles/vdeslirp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stefano/Documents/virtlab/gits/libvdeslirp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libvdeslirp.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vdeslirp.dir/link.txt --verbose=$(VERBOSE)
	$(CMAKE_COMMAND) -E cmake_symlink_library libvdeslirp.so.0.1.0 libvdeslirp.so.0 libvdeslirp.so

libvdeslirp.so.0: libvdeslirp.so.0.1.0
	@$(CMAKE_COMMAND) -E touch_nocreate libvdeslirp.so.0

libvdeslirp.so: libvdeslirp.so.0.1.0
	@$(CMAKE_COMMAND) -E touch_nocreate libvdeslirp.so

# Rule to build all files generated by this target.
CMakeFiles/vdeslirp.dir/build: libvdeslirp.so

.PHONY : CMakeFiles/vdeslirp.dir/build

CMakeFiles/vdeslirp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vdeslirp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vdeslirp.dir/clean

CMakeFiles/vdeslirp.dir/depend:
	cd /home/stefano/Documents/virtlab/gits/libvdeslirp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stefano/Documents/virtlab/gits/libvdeslirp /home/stefano/Documents/virtlab/gits/libvdeslirp /home/stefano/Documents/virtlab/gits/libvdeslirp/build /home/stefano/Documents/virtlab/gits/libvdeslirp/build /home/stefano/Documents/virtlab/gits/libvdeslirp/build/CMakeFiles/vdeslirp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/vdeslirp.dir/depend
