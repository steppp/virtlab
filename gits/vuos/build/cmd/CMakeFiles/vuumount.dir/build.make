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
include cmd/CMakeFiles/vuumount.dir/depend.make

# Include the progress variables for this target.
include cmd/CMakeFiles/vuumount.dir/progress.make

# Include the compile flags for this target's objects.
include cmd/CMakeFiles/vuumount.dir/flags.make

cmd/CMakeFiles/vuumount.dir/vuumount.c.o: cmd/CMakeFiles/vuumount.dir/flags.make
cmd/CMakeFiles/vuumount.dir/vuumount.c.o: ../cmd/vuumount.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object cmd/CMakeFiles/vuumount.dir/vuumount.c.o"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/cmd && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vuumount.dir/vuumount.c.o   -c /home/stefano/Documents/virtlab/gits/vuos/cmd/vuumount.c

cmd/CMakeFiles/vuumount.dir/vuumount.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vuumount.dir/vuumount.c.i"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/cmd && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/vuos/cmd/vuumount.c > CMakeFiles/vuumount.dir/vuumount.c.i

cmd/CMakeFiles/vuumount.dir/vuumount.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vuumount.dir/vuumount.c.s"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/cmd && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/vuos/cmd/vuumount.c -o CMakeFiles/vuumount.dir/vuumount.c.s

# Object files for target vuumount
vuumount_OBJECTS = \
"CMakeFiles/vuumount.dir/vuumount.c.o"

# External object files for target vuumount
vuumount_EXTERNAL_OBJECTS =

bin/vuumount: cmd/CMakeFiles/vuumount.dir/vuumount.c.o
bin/vuumount: cmd/CMakeFiles/vuumount.dir/build.make
bin/vuumount: cmd/CMakeFiles/vuumount.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../bin/vuumount"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/cmd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vuumount.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cmd/CMakeFiles/vuumount.dir/build: bin/vuumount

.PHONY : cmd/CMakeFiles/vuumount.dir/build

cmd/CMakeFiles/vuumount.dir/clean:
	cd /home/stefano/Documents/virtlab/gits/vuos/build/cmd && $(CMAKE_COMMAND) -P CMakeFiles/vuumount.dir/cmake_clean.cmake
.PHONY : cmd/CMakeFiles/vuumount.dir/clean

cmd/CMakeFiles/vuumount.dir/depend:
	cd /home/stefano/Documents/virtlab/gits/vuos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stefano/Documents/virtlab/gits/vuos /home/stefano/Documents/virtlab/gits/vuos/cmd /home/stefano/Documents/virtlab/gits/vuos/build /home/stefano/Documents/virtlab/gits/vuos/build/cmd /home/stefano/Documents/virtlab/gits/vuos/build/cmd/CMakeFiles/vuumount.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cmd/CMakeFiles/vuumount.dir/depend
