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
CMAKE_SOURCE_DIR = /home/stefano/Documents/virtlab/gits/libvdestack

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stefano/Documents/virtlab/gits/libvdestack/build

# Include any dependencies generated for this target.
include CMakeFiles/vdestack.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/vdestack.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vdestack.dir/flags.make

CMakeFiles/vdestack.dir/vdestack.c.o: CMakeFiles/vdestack.dir/flags.make
CMakeFiles/vdestack.dir/vdestack.c.o: ../vdestack.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/libvdestack/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/vdestack.dir/vdestack.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vdestack.dir/vdestack.c.o   -c /home/stefano/Documents/virtlab/gits/libvdestack/vdestack.c

CMakeFiles/vdestack.dir/vdestack.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vdestack.dir/vdestack.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/libvdestack/vdestack.c > CMakeFiles/vdestack.dir/vdestack.c.i

CMakeFiles/vdestack.dir/vdestack.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vdestack.dir/vdestack.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/libvdestack/vdestack.c -o CMakeFiles/vdestack.dir/vdestack.c.s

# Object files for target vdestack
vdestack_OBJECTS = \
"CMakeFiles/vdestack.dir/vdestack.c.o"

# External object files for target vdestack
vdestack_EXTERNAL_OBJECTS =

libvdestack.so.0.1.0: CMakeFiles/vdestack.dir/vdestack.c.o
libvdestack.so.0.1.0: CMakeFiles/vdestack.dir/build.make
libvdestack.so.0.1.0: CMakeFiles/vdestack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stefano/Documents/virtlab/gits/libvdestack/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libvdestack.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vdestack.dir/link.txt --verbose=$(VERBOSE)
	$(CMAKE_COMMAND) -E cmake_symlink_library libvdestack.so.0.1.0 libvdestack.so.0 libvdestack.so

libvdestack.so.0: libvdestack.so.0.1.0
	@$(CMAKE_COMMAND) -E touch_nocreate libvdestack.so.0

libvdestack.so: libvdestack.so.0.1.0
	@$(CMAKE_COMMAND) -E touch_nocreate libvdestack.so

# Rule to build all files generated by this target.
CMakeFiles/vdestack.dir/build: libvdestack.so

.PHONY : CMakeFiles/vdestack.dir/build

CMakeFiles/vdestack.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vdestack.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vdestack.dir/clean

CMakeFiles/vdestack.dir/depend:
	cd /home/stefano/Documents/virtlab/gits/libvdestack/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stefano/Documents/virtlab/gits/libvdestack /home/stefano/Documents/virtlab/gits/libvdestack /home/stefano/Documents/virtlab/gits/libvdestack/build /home/stefano/Documents/virtlab/gits/libvdestack/build /home/stefano/Documents/virtlab/gits/libvdestack/build/CMakeFiles/vdestack.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/vdestack.dir/depend
