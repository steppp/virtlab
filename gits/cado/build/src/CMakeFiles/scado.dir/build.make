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
CMAKE_SOURCE_DIR = /home/stefano/Documents/virtlab/gits/cado

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stefano/Documents/virtlab/gits/cado/build

# Include any dependencies generated for this target.
include src/CMakeFiles/scado.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/scado.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/scado.dir/flags.make

src/CMakeFiles/scado.dir/scado.c.o: src/CMakeFiles/scado.dir/flags.make
src/CMakeFiles/scado.dir/scado.c.o: ../src/scado.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/cado/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/CMakeFiles/scado.dir/scado.c.o"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/scado.dir/scado.c.o   -c /home/stefano/Documents/virtlab/gits/cado/src/scado.c

src/CMakeFiles/scado.dir/scado.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scado.dir/scado.c.i"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/cado/src/scado.c > CMakeFiles/scado.dir/scado.c.i

src/CMakeFiles/scado.dir/scado.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scado.dir/scado.c.s"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/cado/src/scado.c -o CMakeFiles/scado.dir/scado.c.s

src/CMakeFiles/scado.dir/pam_check.c.o: src/CMakeFiles/scado.dir/flags.make
src/CMakeFiles/scado.dir/pam_check.c.o: ../src/pam_check.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/cado/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object src/CMakeFiles/scado.dir/pam_check.c.o"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/scado.dir/pam_check.c.o   -c /home/stefano/Documents/virtlab/gits/cado/src/pam_check.c

src/CMakeFiles/scado.dir/pam_check.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scado.dir/pam_check.c.i"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/cado/src/pam_check.c > CMakeFiles/scado.dir/pam_check.c.i

src/CMakeFiles/scado.dir/pam_check.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scado.dir/pam_check.c.s"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/cado/src/pam_check.c -o CMakeFiles/scado.dir/pam_check.c.s

src/CMakeFiles/scado.dir/file_utils.c.o: src/CMakeFiles/scado.dir/flags.make
src/CMakeFiles/scado.dir/file_utils.c.o: ../src/file_utils.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/cado/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object src/CMakeFiles/scado.dir/file_utils.c.o"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/scado.dir/file_utils.c.o   -c /home/stefano/Documents/virtlab/gits/cado/src/file_utils.c

src/CMakeFiles/scado.dir/file_utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scado.dir/file_utils.c.i"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/cado/src/file_utils.c > CMakeFiles/scado.dir/file_utils.c.i

src/CMakeFiles/scado.dir/file_utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scado.dir/file_utils.c.s"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/cado/src/file_utils.c -o CMakeFiles/scado.dir/file_utils.c.s

src/CMakeFiles/scado.dir/compute_digest.c.o: src/CMakeFiles/scado.dir/flags.make
src/CMakeFiles/scado.dir/compute_digest.c.o: ../src/compute_digest.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/cado/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object src/CMakeFiles/scado.dir/compute_digest.c.o"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/scado.dir/compute_digest.c.o   -c /home/stefano/Documents/virtlab/gits/cado/src/compute_digest.c

src/CMakeFiles/scado.dir/compute_digest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scado.dir/compute_digest.c.i"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/cado/src/compute_digest.c > CMakeFiles/scado.dir/compute_digest.c.i

src/CMakeFiles/scado.dir/compute_digest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scado.dir/compute_digest.c.s"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/cado/src/compute_digest.c -o CMakeFiles/scado.dir/compute_digest.c.s

src/CMakeFiles/scado.dir/capset_from_namelist.c.o: src/CMakeFiles/scado.dir/flags.make
src/CMakeFiles/scado.dir/capset_from_namelist.c.o: ../src/capset_from_namelist.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/cado/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object src/CMakeFiles/scado.dir/capset_from_namelist.c.o"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/scado.dir/capset_from_namelist.c.o   -c /home/stefano/Documents/virtlab/gits/cado/src/capset_from_namelist.c

src/CMakeFiles/scado.dir/capset_from_namelist.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scado.dir/capset_from_namelist.c.i"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/cado/src/capset_from_namelist.c > CMakeFiles/scado.dir/capset_from_namelist.c.i

src/CMakeFiles/scado.dir/capset_from_namelist.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scado.dir/capset_from_namelist.c.s"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/cado/src/capset_from_namelist.c -o CMakeFiles/scado.dir/capset_from_namelist.c.s

src/CMakeFiles/scado.dir/scado_parse.c.o: src/CMakeFiles/scado.dir/flags.make
src/CMakeFiles/scado.dir/scado_parse.c.o: ../src/scado_parse.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stefano/Documents/virtlab/gits/cado/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object src/CMakeFiles/scado.dir/scado_parse.c.o"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/scado.dir/scado_parse.c.o   -c /home/stefano/Documents/virtlab/gits/cado/src/scado_parse.c

src/CMakeFiles/scado.dir/scado_parse.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/scado.dir/scado_parse.c.i"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/stefano/Documents/virtlab/gits/cado/src/scado_parse.c > CMakeFiles/scado.dir/scado_parse.c.i

src/CMakeFiles/scado.dir/scado_parse.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/scado.dir/scado_parse.c.s"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/stefano/Documents/virtlab/gits/cado/src/scado_parse.c -o CMakeFiles/scado.dir/scado_parse.c.s

# Object files for target scado
scado_OBJECTS = \
"CMakeFiles/scado.dir/scado.c.o" \
"CMakeFiles/scado.dir/pam_check.c.o" \
"CMakeFiles/scado.dir/file_utils.c.o" \
"CMakeFiles/scado.dir/compute_digest.c.o" \
"CMakeFiles/scado.dir/capset_from_namelist.c.o" \
"CMakeFiles/scado.dir/scado_parse.c.o"

# External object files for target scado
scado_EXTERNAL_OBJECTS =

src/scado: src/CMakeFiles/scado.dir/scado.c.o
src/scado: src/CMakeFiles/scado.dir/pam_check.c.o
src/scado: src/CMakeFiles/scado.dir/file_utils.c.o
src/scado: src/CMakeFiles/scado.dir/compute_digest.c.o
src/scado: src/CMakeFiles/scado.dir/capset_from_namelist.c.o
src/scado: src/CMakeFiles/scado.dir/scado_parse.c.o
src/scado: src/CMakeFiles/scado.dir/build.make
src/scado: /usr/lib/x86_64-linux-gnu/libpam.so
src/scado: /usr/lib/x86_64-linux-gnu/libpam_misc.so
src/scado: /usr/lib/x86_64-linux-gnu/libcap.so
src/scado: /usr/lib/x86_64-linux-gnu/libmhash.so
src/scado: /usr/local/lib/libexecs.so
src/scado: src/CMakeFiles/scado.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stefano/Documents/virtlab/gits/cado/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable scado"
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scado.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/scado.dir/build: src/scado

.PHONY : src/CMakeFiles/scado.dir/build

src/CMakeFiles/scado.dir/clean:
	cd /home/stefano/Documents/virtlab/gits/cado/build/src && $(CMAKE_COMMAND) -P CMakeFiles/scado.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/scado.dir/clean

src/CMakeFiles/scado.dir/depend:
	cd /home/stefano/Documents/virtlab/gits/cado/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stefano/Documents/virtlab/gits/cado /home/stefano/Documents/virtlab/gits/cado/src /home/stefano/Documents/virtlab/gits/cado/build /home/stefano/Documents/virtlab/gits/cado/build/src /home/stefano/Documents/virtlab/gits/cado/build/src/CMakeFiles/scado.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/scado.dir/depend

