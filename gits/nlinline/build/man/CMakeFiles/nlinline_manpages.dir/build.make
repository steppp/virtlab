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
CMAKE_SOURCE_DIR = /home/stefano/Documents/virtlab/gits/nlinline

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stefano/Documents/virtlab/gits/nlinline/build

# Utility rule file for nlinline_manpages.

# Include the progress variables for this target.
include man/CMakeFiles/nlinline_manpages.dir/progress.make

man/CMakeFiles/nlinline_manpages:
	cd /home/stefano/Documents/virtlab/gits/nlinline/man && make RONN_ARGS="--organization=VirtualSquare" nlinline.3

nlinline_manpages: man/CMakeFiles/nlinline_manpages
nlinline_manpages: man/CMakeFiles/nlinline_manpages.dir/build.make

.PHONY : nlinline_manpages

# Rule to build all files generated by this target.
man/CMakeFiles/nlinline_manpages.dir/build: nlinline_manpages

.PHONY : man/CMakeFiles/nlinline_manpages.dir/build

man/CMakeFiles/nlinline_manpages.dir/clean:
	cd /home/stefano/Documents/virtlab/gits/nlinline/build/man && $(CMAKE_COMMAND) -P CMakeFiles/nlinline_manpages.dir/cmake_clean.cmake
.PHONY : man/CMakeFiles/nlinline_manpages.dir/clean

man/CMakeFiles/nlinline_manpages.dir/depend:
	cd /home/stefano/Documents/virtlab/gits/nlinline/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stefano/Documents/virtlab/gits/nlinline /home/stefano/Documents/virtlab/gits/nlinline/man /home/stefano/Documents/virtlab/gits/nlinline/build /home/stefano/Documents/virtlab/gits/nlinline/build/man /home/stefano/Documents/virtlab/gits/nlinline/build/man/CMakeFiles/nlinline_manpages.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : man/CMakeFiles/nlinline_manpages.dir/depend

