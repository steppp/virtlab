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

# Utility rule file for vuos_manpages.

# Include the progress variables for this target.
include man/CMakeFiles/vuos_manpages.dir/progress.make

man/CMakeFiles/vuos_manpages:
	cd /home/stefano/Documents/virtlab/gits/vuos/man && make RONN_ARGS="--organization=VirtualSquare-VUOS" umvu.1 vu_insmod.1 vu_lsmod.1 vu_rmmod.1 vudebug.1 vumount.1 vuname.1 vustack.1 vusu.1 vuumount.1

vuos_manpages: man/CMakeFiles/vuos_manpages
vuos_manpages: man/CMakeFiles/vuos_manpages.dir/build.make

.PHONY : vuos_manpages

# Rule to build all files generated by this target.
man/CMakeFiles/vuos_manpages.dir/build: vuos_manpages

.PHONY : man/CMakeFiles/vuos_manpages.dir/build

man/CMakeFiles/vuos_manpages.dir/clean:
	cd /home/stefano/Documents/virtlab/gits/vuos/build/man && $(CMAKE_COMMAND) -P CMakeFiles/vuos_manpages.dir/cmake_clean.cmake
.PHONY : man/CMakeFiles/vuos_manpages.dir/clean

man/CMakeFiles/vuos_manpages.dir/depend:
	cd /home/stefano/Documents/virtlab/gits/vuos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stefano/Documents/virtlab/gits/vuos /home/stefano/Documents/virtlab/gits/vuos/man /home/stefano/Documents/virtlab/gits/vuos/build /home/stefano/Documents/virtlab/gits/vuos/build/man /home/stefano/Documents/virtlab/gits/vuos/build/man/CMakeFiles/vuos_manpages.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : man/CMakeFiles/vuos_manpages.dir/depend
