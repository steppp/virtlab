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
CMAKE_SOURCE_DIR = /home/stefano/Documents/virtlab/gits/libvolatilestream

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stefano/Documents/virtlab/gits/libvolatilestream/build

# Utility rule file for volatilestream_manpages.

# Include the progress variables for this target.
include man/CMakeFiles/volatilestream_manpages.dir/progress.make

man/CMakeFiles/volatilestream_manpages:
	cd /home/stefano/Documents/virtlab/gits/libvolatilestream/man && make RONN_ARGS="--organization=VirtualSquare" volstream_open.3

volatilestream_manpages: man/CMakeFiles/volatilestream_manpages
volatilestream_manpages: man/CMakeFiles/volatilestream_manpages.dir/build.make

.PHONY : volatilestream_manpages

# Rule to build all files generated by this target.
man/CMakeFiles/volatilestream_manpages.dir/build: volatilestream_manpages

.PHONY : man/CMakeFiles/volatilestream_manpages.dir/build

man/CMakeFiles/volatilestream_manpages.dir/clean:
	cd /home/stefano/Documents/virtlab/gits/libvolatilestream/build/man && $(CMAKE_COMMAND) -P CMakeFiles/volatilestream_manpages.dir/cmake_clean.cmake
.PHONY : man/CMakeFiles/volatilestream_manpages.dir/clean

man/CMakeFiles/volatilestream_manpages.dir/depend:
	cd /home/stefano/Documents/virtlab/gits/libvolatilestream/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stefano/Documents/virtlab/gits/libvolatilestream /home/stefano/Documents/virtlab/gits/libvolatilestream/man /home/stefano/Documents/virtlab/gits/libvolatilestream/build /home/stefano/Documents/virtlab/gits/libvolatilestream/build/man /home/stefano/Documents/virtlab/gits/libvolatilestream/build/man/CMakeFiles/volatilestream_manpages.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : man/CMakeFiles/volatilestream_manpages.dir/depend
