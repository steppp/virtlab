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
CMAKE_SOURCE_DIR = /home/stefano/Documents/virtlab/gits/libvpoll-eventfd

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stefano/Documents/virtlab/gits/libvpoll-eventfd/build

# Include any dependencies generated for this target.
include CMakeFiles/vpoll.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/vpoll.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vpoll.dir/flags.make

CMakeFiles/vpoll.dir/vpoll.c.o: CMakeFiles/vpoll.dir/flags.make
CMakeFiles/vpoll.dir/vpoll.c.o: ../vpoll.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/libvpoll-eventfd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/vpoll.dir/vpoll.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vpoll.dir/vpoll.c.o   -c /home/stefano/Documents/virtlab/gits/libvpoll-eventfd/vpoll.c

CMakeFiles/vpoll.dir/vpoll.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vpoll.dir/vpoll.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/libvpoll-eventfd/vpoll.c > CMakeFiles/vpoll.dir/vpoll.c.i

CMakeFiles/vpoll.dir/vpoll.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vpoll.dir/vpoll.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/libvpoll-eventfd/vpoll.c -o CMakeFiles/vpoll.dir/vpoll.c.s

# Object files for target vpoll
vpoll_OBJECTS = \
"CMakeFiles/vpoll.dir/vpoll.c.o"

# External object files for target vpoll
vpoll_EXTERNAL_OBJECTS =

lib/libvpoll.so.0.0.1: CMakeFiles/vpoll.dir/vpoll.c.o
lib/libvpoll.so.0.0.1: CMakeFiles/vpoll.dir/build.make
lib/libvpoll.so.0.0.1: CMakeFiles/vpoll.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stefano/Documents/virtlab/gits/libvpoll-eventfd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library lib/libvpoll.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vpoll.dir/link.txt --verbose=$(VERBOSE)
	$(CMAKE_COMMAND) -E cmake_symlink_library lib/libvpoll.so.0.0.1 lib/libvpoll.so.0 lib/libvpoll.so

lib/libvpoll.so.0: lib/libvpoll.so.0.0.1
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libvpoll.so.0

lib/libvpoll.so: lib/libvpoll.so.0.0.1
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libvpoll.so

# Rule to build all files generated by this target.
CMakeFiles/vpoll.dir/build: lib/libvpoll.so

.PHONY : CMakeFiles/vpoll.dir/build

CMakeFiles/vpoll.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vpoll.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vpoll.dir/clean

CMakeFiles/vpoll.dir/depend:
	cd /home/stefano/Documents/virtlab/gits/libvpoll-eventfd/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stefano/Documents/virtlab/gits/libvpoll-eventfd /home/stefano/Documents/virtlab/gits/libvpoll-eventfd /home/stefano/Documents/virtlab/gits/libvpoll-eventfd/build /home/stefano/Documents/virtlab/gits/libvpoll-eventfd/build /home/stefano/Documents/virtlab/gits/libvpoll-eventfd/build/CMakeFiles/vpoll.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/vpoll.dir/depend
