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
include vufs/CMakeFiles/vufs.dir/depend.make

# Include the progress variables for this target.
include vufs/CMakeFiles/vufs.dir/progress.make

# Include the compile flags for this target's objects.
include vufs/CMakeFiles/vufs.dir/flags.make

vufs/CMakeFiles/vufs.dir/vufs.c.o: vufs/CMakeFiles/vufs.dir/flags.make
vufs/CMakeFiles/vufs.dir/vufs.c.o: ../vufs/vufs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object vufs/CMakeFiles/vufs.dir/vufs.c.o"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vufs.dir/vufs.c.o   -c /home/stefano/Documents/virtlab/gits/vuos/vufs/vufs.c

vufs/CMakeFiles/vufs.dir/vufs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vufs.dir/vufs.c.i"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/vuos/vufs/vufs.c > CMakeFiles/vufs.dir/vufs.c.i

vufs/CMakeFiles/vufs.dir/vufs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vufs.dir/vufs.c.s"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/vuos/vufs/vufs.c -o CMakeFiles/vufs.dir/vufs.c.s

vufs/CMakeFiles/vufs.dir/vufs_getdents.c.o: vufs/CMakeFiles/vufs.dir/flags.make
vufs/CMakeFiles/vufs.dir/vufs_getdents.c.o: ../vufs/vufs_getdents.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object vufs/CMakeFiles/vufs.dir/vufs_getdents.c.o"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vufs.dir/vufs_getdents.c.o   -c /home/stefano/Documents/virtlab/gits/vuos/vufs/vufs_getdents.c

vufs/CMakeFiles/vufs.dir/vufs_getdents.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vufs.dir/vufs_getdents.c.i"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/vuos/vufs/vufs_getdents.c > CMakeFiles/vufs.dir/vufs_getdents.c.i

vufs/CMakeFiles/vufs.dir/vufs_getdents.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vufs.dir/vufs_getdents.c.s"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/vuos/vufs/vufs_getdents.c -o CMakeFiles/vufs.dir/vufs_getdents.c.s

vufs/CMakeFiles/vufs.dir/vufs_path.c.o: vufs/CMakeFiles/vufs.dir/flags.make
vufs/CMakeFiles/vufs.dir/vufs_path.c.o: ../vufs/vufs_path.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object vufs/CMakeFiles/vufs.dir/vufs_path.c.o"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vufs.dir/vufs_path.c.o   -c /home/stefano/Documents/virtlab/gits/vuos/vufs/vufs_path.c

vufs/CMakeFiles/vufs.dir/vufs_path.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vufs.dir/vufs_path.c.i"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/vuos/vufs/vufs_path.c > CMakeFiles/vufs.dir/vufs_path.c.i

vufs/CMakeFiles/vufs.dir/vufs_path.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vufs.dir/vufs_path.c.s"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/vuos/vufs/vufs_path.c -o CMakeFiles/vufs.dir/vufs_path.c.s

vufs/CMakeFiles/vufs.dir/vufsa.c.o: vufs/CMakeFiles/vufs.dir/flags.make
vufs/CMakeFiles/vufs.dir/vufsa.c.o: ../vufs/vufsa.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object vufs/CMakeFiles/vufs.dir/vufsa.c.o"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vufs.dir/vufsa.c.o   -c /home/stefano/Documents/virtlab/gits/vuos/vufs/vufsa.c

vufs/CMakeFiles/vufs.dir/vufsa.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vufs.dir/vufsa.c.i"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/vuos/vufs/vufsa.c > CMakeFiles/vufs.dir/vufsa.c.i

vufs/CMakeFiles/vufs.dir/vufsa.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vufs.dir/vufsa.c.s"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/vuos/vufs/vufsa.c -o CMakeFiles/vufs.dir/vufsa.c.s

vufs/CMakeFiles/vufs.dir/vufsops.c.o: vufs/CMakeFiles/vufs.dir/flags.make
vufs/CMakeFiles/vufs.dir/vufsops.c.o: ../vufs/vufsops.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object vufs/CMakeFiles/vufs.dir/vufsops.c.o"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vufs.dir/vufsops.c.o   -c /home/stefano/Documents/virtlab/gits/vuos/vufs/vufsops.c

vufs/CMakeFiles/vufs.dir/vufsops.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vufs.dir/vufsops.c.i"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/vuos/vufs/vufsops.c > CMakeFiles/vufs.dir/vufsops.c.i

vufs/CMakeFiles/vufs.dir/vufsops.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vufs.dir/vufsops.c.s"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/vuos/vufs/vufsops.c -o CMakeFiles/vufs.dir/vufsops.c.s

vufs/CMakeFiles/vufs.dir/vufstat.c.o: vufs/CMakeFiles/vufs.dir/flags.make
vufs/CMakeFiles/vufs.dir/vufstat.c.o: ../vufs/vufstat.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object vufs/CMakeFiles/vufs.dir/vufstat.c.o"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vufs.dir/vufstat.c.o   -c /home/stefano/Documents/virtlab/gits/vuos/vufs/vufstat.c

vufs/CMakeFiles/vufs.dir/vufstat.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vufs.dir/vufstat.c.i"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/vuos/vufs/vufstat.c > CMakeFiles/vufs.dir/vufstat.c.i

vufs/CMakeFiles/vufs.dir/vufstat.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vufs.dir/vufstat.c.s"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/vuos/vufs/vufstat.c -o CMakeFiles/vufs.dir/vufstat.c.s

# Object files for target vufs
vufs_OBJECTS = \
"CMakeFiles/vufs.dir/vufs.c.o" \
"CMakeFiles/vufs.dir/vufs_getdents.c.o" \
"CMakeFiles/vufs.dir/vufs_path.c.o" \
"CMakeFiles/vufs.dir/vufsa.c.o" \
"CMakeFiles/vufs.dir/vufsops.c.o" \
"CMakeFiles/vufs.dir/vufstat.c.o"

# External object files for target vufs
vufs_EXTERNAL_OBJECTS =

vufs/vufs.so: vufs/CMakeFiles/vufs.dir/vufs.c.o
vufs/vufs.so: vufs/CMakeFiles/vufs.dir/vufs_getdents.c.o
vufs/vufs.so: vufs/CMakeFiles/vufs.dir/vufs_path.c.o
vufs/vufs.so: vufs/CMakeFiles/vufs.dir/vufsa.c.o
vufs/vufs.so: vufs/CMakeFiles/vufs.dir/vufsops.c.o
vufs/vufs.so: vufs/CMakeFiles/vufs.dir/vufstat.c.o
vufs/vufs.so: vufs/CMakeFiles/vufs.dir/build.make
vufs/vufs.so: vufs/CMakeFiles/vufs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stefano/Documents/virtlab/gits/vuos/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C shared library vufs.so"
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vufs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
vufs/CMakeFiles/vufs.dir/build: vufs/vufs.so

.PHONY : vufs/CMakeFiles/vufs.dir/build

vufs/CMakeFiles/vufs.dir/clean:
	cd /home/stefano/Documents/virtlab/gits/vuos/build/vufs && $(CMAKE_COMMAND) -P CMakeFiles/vufs.dir/cmake_clean.cmake
.PHONY : vufs/CMakeFiles/vufs.dir/clean

vufs/CMakeFiles/vufs.dir/depend:
	cd /home/stefano/Documents/virtlab/gits/vuos/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stefano/Documents/virtlab/gits/vuos /home/stefano/Documents/virtlab/gits/vuos/vufs /home/stefano/Documents/virtlab/gits/vuos/build /home/stefano/Documents/virtlab/gits/vuos/build/vufs /home/stefano/Documents/virtlab/gits/vuos/build/vufs/CMakeFiles/vufs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : vufs/CMakeFiles/vufs.dir/depend
