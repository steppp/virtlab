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
include vubinfmt/CMakeFiles/vubinfmt.dir/depend.make

# Include the progress variables for this target.
include vubinfmt/CMakeFiles/vubinfmt.dir/progress.make

# Include the compile flags for this target's objects.
include vubinfmt/CMakeFiles/vubinfmt.dir/flags.make

vubinfmt/CMakeFiles/vubinfmt.dir/vubinfmt.c.o: vubinfmt/CMakeFiles/vubinfmt.dir/flags.make
vubinfmt/CMakeFiles/vubinfmt.dir/vubinfmt.c.o: ../vubinfmt/vubinfmt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object vubinfmt/CMakeFiles/vubinfmt.dir/vubinfmt.c.o"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vubinfmt && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vubinfmt.dir/vubinfmt.c.o   -c /home/stefano/Documents/virtlab/gits/vuos/vubinfmt/vubinfmt.c

vubinfmt/CMakeFiles/vubinfmt.dir/vubinfmt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vubinfmt.dir/vubinfmt.c.i"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vubinfmt && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/vuos/vubinfmt/vubinfmt.c > CMakeFiles/vubinfmt.dir/vubinfmt.c.i

vubinfmt/CMakeFiles/vubinfmt.dir/vubinfmt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vubinfmt.dir/vubinfmt.c.s"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vubinfmt && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/vuos/vubinfmt/vubinfmt.c -o CMakeFiles/vubinfmt.dir/vubinfmt.c.s

# Object files for target vubinfmt
vubinfmt_OBJECTS = \
"CMakeFiles/vubinfmt.dir/vubinfmt.c.o"

# External object files for target vubinfmt
vubinfmt_EXTERNAL_OBJECTS =

vubinfmt/vubinfmt.so: vubinfmt/CMakeFiles/vubinfmt.dir/vubinfmt.c.o
vubinfmt/vubinfmt.so: vubinfmt/CMakeFiles/vubinfmt.dir/build.make
vubinfmt/vubinfmt.so: lib/libvumod.so.0.0.1
vubinfmt/vubinfmt.so: vubinfmt/CMakeFiles/vubinfmt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library vubinfmt.so"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vubinfmt && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vubinfmt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vubinfmt/CMakeFiles/vubinfmt.dir/build: vubinfmt/vubinfmt.so

.PHONY : vubinfmt/CMakeFiles/vubinfmt.dir/build

vubinfmt/CMakeFiles/vubinfmt.dir/clean:
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vubinfmt && $(CMAKE_COMMAND) -P CMakeFiles/vubinfmt.dir/cmake_clean.cmake
.PHONY : vubinfmt/CMakeFiles/vubinfmt.dir/clean

vubinfmt/CMakeFiles/vubinfmt.dir/depend:
	cd /home/stefano/Documents/virtlab/gits/vuos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stefano/Documents/virtlab/gits/vuos /home/stefano/Documents/virtlab/gits/vuos/vubinfmt /home/stefano/Documents/virtlab/gits/vuos/build /home/stefano/Documents/virtlab/gits/vuos/build/vubinfmt /home/stefano/Documents/virtlab/gits/vuos/build/vubinfmt/CMakeFiles/vubinfmt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vubinfmt/CMakeFiles/vubinfmt.dir/depend

