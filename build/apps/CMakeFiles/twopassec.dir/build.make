# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /apps/spack/bell/apps/cmake/3.20.6-gcc-4.8.5-ts4chab/bin/cmake

# The command to remove a file.
RM = /apps/spack/bell/apps/cmake/3.20.6-gcc-4.8.5-ts4chab/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sferdou/GraST

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sferdou/GraST/build

# Include any dependencies generated for this target.
include apps/CMakeFiles/twopassec.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include apps/CMakeFiles/twopassec.dir/compiler_depend.make

# Include the progress variables for this target.
include apps/CMakeFiles/twopassec.dir/progress.make

# Include the compile flags for this target's objects.
include apps/CMakeFiles/twopassec.dir/flags.make

apps/CMakeFiles/twopassec.dir/appStreamTwoPassEC.cc.o: apps/CMakeFiles/twopassec.dir/flags.make
apps/CMakeFiles/twopassec.dir/appStreamTwoPassEC.cc.o: ../apps/appStreamTwoPassEC.cc
apps/CMakeFiles/twopassec.dir/appStreamTwoPassEC.cc.o: apps/CMakeFiles/twopassec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sferdou/GraST/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object apps/CMakeFiles/twopassec.dir/appStreamTwoPassEC.cc.o"
	cd /home/sferdou/GraST/build/apps && /apps/spack/bell/apps/gcc/9.3.0-gcc-4.8.5-z2ug7z7/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT apps/CMakeFiles/twopassec.dir/appStreamTwoPassEC.cc.o -MF CMakeFiles/twopassec.dir/appStreamTwoPassEC.cc.o.d -o CMakeFiles/twopassec.dir/appStreamTwoPassEC.cc.o -c /home/sferdou/GraST/apps/appStreamTwoPassEC.cc

apps/CMakeFiles/twopassec.dir/appStreamTwoPassEC.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/twopassec.dir/appStreamTwoPassEC.cc.i"
	cd /home/sferdou/GraST/build/apps && /apps/spack/bell/apps/gcc/9.3.0-gcc-4.8.5-z2ug7z7/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sferdou/GraST/apps/appStreamTwoPassEC.cc > CMakeFiles/twopassec.dir/appStreamTwoPassEC.cc.i

apps/CMakeFiles/twopassec.dir/appStreamTwoPassEC.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/twopassec.dir/appStreamTwoPassEC.cc.s"
	cd /home/sferdou/GraST/build/apps && /apps/spack/bell/apps/gcc/9.3.0-gcc-4.8.5-z2ug7z7/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sferdou/GraST/apps/appStreamTwoPassEC.cc -o CMakeFiles/twopassec.dir/appStreamTwoPassEC.cc.s

# Object files for target twopassec
twopassec_OBJECTS = \
"CMakeFiles/twopassec.dir/appStreamTwoPassEC.cc.o"

# External object files for target twopassec
twopassec_EXTERNAL_OBJECTS =

apps/twopassec: apps/CMakeFiles/twopassec.dir/appStreamTwoPassEC.cc.o
apps/twopassec: apps/CMakeFiles/twopassec.dir/build.make
apps/twopassec: src/libgstream.a
apps/twopassec: /apps/spack/bell/apps/gcc/9.3.0-gcc-4.8.5-z2ug7z7/lib64/libgomp.so
apps/twopassec: /lib64/libpthread.so
apps/twopassec: apps/CMakeFiles/twopassec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sferdou/GraST/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable twopassec"
	cd /home/sferdou/GraST/build/apps && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/twopassec.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
apps/CMakeFiles/twopassec.dir/build: apps/twopassec
.PHONY : apps/CMakeFiles/twopassec.dir/build

apps/CMakeFiles/twopassec.dir/clean:
	cd /home/sferdou/GraST/build/apps && $(CMAKE_COMMAND) -P CMakeFiles/twopassec.dir/cmake_clean.cmake
.PHONY : apps/CMakeFiles/twopassec.dir/clean

apps/CMakeFiles/twopassec.dir/depend:
	cd /home/sferdou/GraST/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sferdou/GraST /home/sferdou/GraST/apps /home/sferdou/GraST/build /home/sferdou/GraST/build/apps /home/sferdou/GraST/build/apps/CMakeFiles/twopassec.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : apps/CMakeFiles/twopassec.dir/depend
