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
include vudev_modules/CMakeFiles/vudevramdisk.dir/depend.make

# Include the progress variables for this target.
include vudev_modules/CMakeFiles/vudevramdisk.dir/progress.make

# Include the compile flags for this target's objects.
include vudev_modules/CMakeFiles/vudevramdisk.dir/flags.make

vudev_modules/CMakeFiles/vudevramdisk.dir/vudevramdisk.c.o: vudev_modules/CMakeFiles/vudevramdisk.dir/flags.make
vudev_modules/CMakeFiles/vudevramdisk.dir/vudevramdisk.c.o: ../vudev_modules/vudevramdisk.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object vudev_modules/CMakeFiles/vudevramdisk.dir/vudevramdisk.c.o"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vudev_modules && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vudevramdisk.dir/vudevramdisk.c.o   -c /home/stefano/Documents/virtlab/gits/vuos/vudev_modules/vudevramdisk.c

vudev_modules/CMakeFiles/vudevramdisk.dir/vudevramdisk.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vudevramdisk.dir/vudevramdisk.c.i"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vudev_modules && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/vuos/vudev_modules/vudevramdisk.c > CMakeFiles/vudevramdisk.dir/vudevramdisk.c.i

vudev_modules/CMakeFiles/vudevramdisk.dir/vudevramdisk.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vudevramdisk.dir/vudevramdisk.c.s"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vudev_modules && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/vuos/vudev_modules/vudevramdisk.c -o CMakeFiles/vudevramdisk.dir/vudevramdisk.c.s

# Object files for target vudevramdisk
vudevramdisk_OBJECTS = \
"CMakeFiles/vudevramdisk.dir/vudevramdisk.c.o"

# External object files for target vudevramdisk
vudevramdisk_EXTERNAL_OBJECTS =

lib/vudevramdisk.so: vudev_modules/CMakeFiles/vudevramdisk.dir/vudevramdisk.c.o
lib/vudevramdisk.so: vudev_modules/CMakeFiles/vudevramdisk.dir/build.make
lib/vudevramdisk.so: vudev_modules/CMakeFiles/vudevramdisk.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library ../lib/vudevramdisk.so"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vudev_modules && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vudevramdisk.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vudev_modules/CMakeFiles/vudevramdisk.dir/build: lib/vudevramdisk.so

.PHONY : vudev_modules/CMakeFiles/vudevramdisk.dir/build

vudev_modules/CMakeFiles/vudevramdisk.dir/clean:
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vudev_modules && $(CMAKE_COMMAND) -P CMakeFiles/vudevramdisk.dir/cmake_clean.cmake
.PHONY : vudev_modules/CMakeFiles/vudevramdisk.dir/clean

vudev_modules/CMakeFiles/vudevramdisk.dir/depend:
	cd /home/stefano/Documents/virtlab/gits/vuos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stefano/Documents/virtlab/gits/vuos /home/stefano/Documents/virtlab/gits/vuos/vudev_modules /home/stefano/Documents/virtlab/gits/vuos/build /home/stefano/Documents/virtlab/gits/vuos/build/vudev_modules /home/stefano/Documents/virtlab/gits/vuos/build/vudev_modules/CMakeFiles/vudevramdisk.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vudev_modules/CMakeFiles/vudevramdisk.dir/depend

