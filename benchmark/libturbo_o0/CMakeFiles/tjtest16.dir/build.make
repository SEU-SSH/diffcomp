# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /app/diffcomp/benchmark/libjpeg-turbo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /app/diffcomp/benchmark/libturbo_o0

# Utility rule file for tjtest16.

# Include any custom commands dependencies for this target.
include CMakeFiles/tjtest16.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tjtest16.dir/progress.make

CMakeFiles/tjtest16: /app/diffcomp/benchmark/libjpeg-turbo/cmakescripts/tjbenchtest.cmake
CMakeFiles/tjtest16: test/tjbenchtest
	/usr/bin/cmake -DWITH_JAVA=0 -DPRECISION=2 -P /app/diffcomp/benchmark/libjpeg-turbo/cmakescripts/tjbenchtest.cmake
	/usr/bin/cmake -DWITH_JAVA=0 -DPRECISION=3 -P /app/diffcomp/benchmark/libjpeg-turbo/cmakescripts/tjbenchtest.cmake
	/usr/bin/cmake -DWITH_JAVA=0 -DPRECISION=4 -P /app/diffcomp/benchmark/libjpeg-turbo/cmakescripts/tjbenchtest.cmake
	/usr/bin/cmake -DWITH_JAVA=0 -DPRECISION=5 -P /app/diffcomp/benchmark/libjpeg-turbo/cmakescripts/tjbenchtest.cmake
	/usr/bin/cmake -DWITH_JAVA=0 -DPRECISION=6 -P /app/diffcomp/benchmark/libjpeg-turbo/cmakescripts/tjbenchtest.cmake
	/usr/bin/cmake -DWITH_JAVA=0 -DPRECISION=7 -P /app/diffcomp/benchmark/libjpeg-turbo/cmakescripts/tjbenchtest.cmake
	/usr/bin/cmake -DWITH_JAVA=0 -DPRECISION=9 -P /app/diffcomp/benchmark/libjpeg-turbo/cmakescripts/tjbenchtest.cmake
	/usr/bin/cmake -DWITH_JAVA=0 -DPRECISION=10 -P /app/diffcomp/benchmark/libjpeg-turbo/cmakescripts/tjbenchtest.cmake
	/usr/bin/cmake -DWITH_JAVA=0 -DPRECISION=11 -P /app/diffcomp/benchmark/libjpeg-turbo/cmakescripts/tjbenchtest.cmake
	/usr/bin/cmake -DWITH_JAVA=0 -DPRECISION=13 -P /app/diffcomp/benchmark/libjpeg-turbo/cmakescripts/tjbenchtest.cmake
	/usr/bin/cmake -DWITH_JAVA=0 -DPRECISION=14 -P /app/diffcomp/benchmark/libjpeg-turbo/cmakescripts/tjbenchtest.cmake
	/usr/bin/cmake -DWITH_JAVA=0 -DPRECISION=15 -P /app/diffcomp/benchmark/libjpeg-turbo/cmakescripts/tjbenchtest.cmake
	/usr/bin/cmake -DWITH_JAVA=0 -DPRECISION=16 -P /app/diffcomp/benchmark/libjpeg-turbo/cmakescripts/tjbenchtest.cmake

tjtest16: CMakeFiles/tjtest16
tjtest16: CMakeFiles/tjtest16.dir/build.make
.PHONY : tjtest16

# Rule to build all files generated by this target.
CMakeFiles/tjtest16.dir/build: tjtest16
.PHONY : CMakeFiles/tjtest16.dir/build

CMakeFiles/tjtest16.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tjtest16.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tjtest16.dir/clean

CMakeFiles/tjtest16.dir/depend:
	cd /app/diffcomp/benchmark/libturbo_o0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /app/diffcomp/benchmark/libjpeg-turbo /app/diffcomp/benchmark/libjpeg-turbo /app/diffcomp/benchmark/libturbo_o0 /app/diffcomp/benchmark/libturbo_o0 /app/diffcomp/benchmark/libturbo_o0/CMakeFiles/tjtest16.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/tjtest16.dir/depend

