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
include cmd/CMakeFiles/vuname.dir/depend.make

# Include the progress variables for this target.
include cmd/CMakeFiles/vuname.dir/progress.make

# Include the compile flags for this target's objects.
include cmd/CMakeFiles/vuname.dir/flags.make

cmd/CMakeFiles/vuname.dir/vuname.c.o: cmd/CMakeFiles/vuname.dir/flags.make
cmd/CMakeFiles/vuname.dir/vuname.c.o: ../cmd/vuname.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object cmd/CMakeFiles/vuname.dir/vuname.c.o"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/cmd && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vuname.dir/vuname.c.o   -c /home/stefano/Documents/virtlab/gits/vuos/cmd/vuname.c

cmd/CMakeFiles/vuname.dir/vuname.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vuname.dir/vuname.c.i"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/cmd && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/vuos/cmd/vuname.c > CMakeFiles/vuname.dir/vuname.c.i

cmd/CMakeFiles/vuname.dir/vuname.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vuname.dir/vuname.c.s"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/cmd && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/vuos/cmd/vuname.c -o CMakeFiles/vuname.dir/vuname.c.s

# Object files for target vuname
vuname_OBJECTS = \
"CMakeFiles/vuname.dir/vuname.c.o"

# External object files for target vuname
vuname_EXTERNAL_OBJECTS =

bin/vuname: cmd/CMakeFiles/vuname.dir/vuname.c.o
bin/vuname: cmd/CMakeFiles/vuname.dir/build.make
bin/vuname: cmd/CMakeFiles/vuname.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../bin/vuname"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/cmd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vuname.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cmd/CMakeFiles/vuname.dir/build: bin/vuname

.PHONY : cmd/CMakeFiles/vuname.dir/build

cmd/CMakeFiles/vuname.dir/clean:
	cd /home/stefano/Documents/virtlab/gits/vuos/build/cmd && $(CMAKE_COMMAND) -P CMakeFiles/vuname.dir/cmake_clean.cmake
.PHONY : cmd/CMakeFiles/vuname.dir/clean

cmd/CMakeFiles/vuname.dir/depend:
	cd /home/stefano/Documents/virtlab/gits/vuos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stefano/Documents/virtlab/gits/vuos /home/stefano/Documents/virtlab/gits/vuos/cmd /home/stefano/Documents/virtlab/gits/vuos/build /home/stefano/Documents/virtlab/gits/vuos/build/cmd /home/stefano/Documents/virtlab/gits/vuos/build/cmd/CMakeFiles/vuname.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cmd/CMakeFiles/vuname.dir/depend

