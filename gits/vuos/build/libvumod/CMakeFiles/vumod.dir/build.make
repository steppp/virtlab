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
include libvumod/CMakeFiles/vumod.dir/depend.make

# Include the progress variables for this target.
include libvumod/CMakeFiles/vumod.dir/progress.make

# Include the compile flags for this target's objects.
include libvumod/CMakeFiles/vumod.dir/flags.make

libvumod/CMakeFiles/vumod.dir/vu_mod_pseudofile.c.o: libvumod/CMakeFiles/vumod.dir/flags.make
libvumod/CMakeFiles/vumod.dir/vu_mod_pseudofile.c.o: ../libvumod/vu_mod_pseudofile.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libvumod/CMakeFiles/vumod.dir/vu_mod_pseudofile.c.o"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/libvumod && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vumod.dir/vu_mod_pseudofile.c.o   -c /home/stefano/Documents/virtlab/gits/vuos/libvumod/vu_mod_pseudofile.c

libvumod/CMakeFiles/vumod.dir/vu_mod_pseudofile.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vumod.dir/vu_mod_pseudofile.c.i"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/libvumod && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/vuos/libvumod/vu_mod_pseudofile.c > CMakeFiles/vumod.dir/vu_mod_pseudofile.c.i

libvumod/CMakeFiles/vumod.dir/vu_mod_pseudofile.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vumod.dir/vu_mod_pseudofile.c.s"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/libvumod && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/vuos/libvumod/vu_mod_pseudofile.c -o CMakeFiles/vumod.dir/vu_mod_pseudofile.c.s

# Object files for target vumod
vumod_OBJECTS = \
"CMakeFiles/vumod.dir/vu_mod_pseudofile.c.o"

# External object files for target vumod
vumod_EXTERNAL_OBJECTS =

lib/libvumod.so.0.0.1: libvumod/CMakeFiles/vumod.dir/vu_mod_pseudofile.c.o
lib/libvumod.so.0.0.1: libvumod/CMakeFiles/vumod.dir/build.make
lib/libvumod.so.0.0.1: libvumod/CMakeFiles/vumod.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library ../lib/libvumod.so"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/libvumod && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vumod.dir/link.txt --verbose=$(VERBOSE)
	cd /home/stefano/Documents/virtlab/gits/vuos/build/libvumod && $(CMAKE_COMMAND) -E cmake_symlink_library ../lib/libvumod.so.0.0.1 ../lib/libvumod.so.0 ../lib/libvumod.so

lib/libvumod.so.0: lib/libvumod.so.0.0.1
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libvumod.so.0

lib/libvumod.so: lib/libvumod.so.0.0.1
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libvumod.so

# Rule to build all files generated by this target.
libvumod/CMakeFiles/vumod.dir/build: lib/libvumod.so

.PHONY : libvumod/CMakeFiles/vumod.dir/build

libvumod/CMakeFiles/vumod.dir/clean:
	cd /home/stefano/Documents/virtlab/gits/vuos/build/libvumod && $(CMAKE_COMMAND) -P CMakeFiles/vumod.dir/cmake_clean.cmake
.PHONY : libvumod/CMakeFiles/vumod.dir/clean

libvumod/CMakeFiles/vumod.dir/depend:
	cd /home/stefano/Documents/virtlab/gits/vuos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stefano/Documents/virtlab/gits/vuos /home/stefano/Documents/virtlab/gits/vuos/libvumod /home/stefano/Documents/virtlab/gits/vuos/build /home/stefano/Documents/virtlab/gits/vuos/build/libvumod /home/stefano/Documents/virtlab/gits/vuos/build/libvumod/CMakeFiles/vumod.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libvumod/CMakeFiles/vumod.dir/depend

