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

# Utility rule file for vdeslirp_manpages.

# Include the progress variables for this target.
include man/CMakeFiles/vdeslirp_manpages.dir/progress.make

man/CMakeFiles/vdeslirp_manpages:
	cd /home/stefano/Documents/virtlab/gits/libvdeslirp/man && make RONN_ARGS="--organization=VirtualSquare" libvdeslirp.3 libvdeslirpcfg.3 libvdeslirpfwd.3

vdeslirp_manpages: man/CMakeFiles/vdeslirp_manpages
vdeslirp_manpages: man/CMakeFiles/vdeslirp_manpages.dir/build.make

.PHONY : vdeslirp_manpages

# Rule to build all files generated by this target.
man/CMakeFiles/vdeslirp_manpages.dir/build: vdeslirp_manpages

.PHONY : man/CMakeFiles/vdeslirp_manpages.dir/build

man/CMakeFiles/vdeslirp_manpages.dir/clean:
	cd /home/stefano/Documents/virtlab/gits/libvdeslirp/build/man && $(CMAKE_COMMAND) -P CMakeFiles/vdeslirp_manpages.dir/cmake_clean.cmake
.PHONY : man/CMakeFiles/vdeslirp_manpages.dir/clean

man/CMakeFiles/vdeslirp_manpages.dir/depend:
	cd /home/stefano/Documents/virtlab/gits/libvdeslirp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stefano/Documents/virtlab/gits/libvdeslirp /home/stefano/Documents/virtlab/gits/libvdeslirp/man /home/stefano/Documents/virtlab/gits/libvdeslirp/build /home/stefano/Documents/virtlab/gits/libvdeslirp/build/man /home/stefano/Documents/virtlab/gits/libvdeslirp/build/man/CMakeFiles/vdeslirp_manpages.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : man/CMakeFiles/vdeslirp_manpages.dir/depend

