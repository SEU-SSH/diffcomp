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

# Utility rule file for tjtest.

# Include any custom commands dependencies for this target.
include CMakeFiles/tjtest.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tjtest.dir/progress.make

CMakeFiles/tjtest: /app/diffcomp/benchmark/libjpeg-turbo/cmakescripts/tjbenchtest.cmake
CMakeFiles/tjtest: test/tjbenchtest
	/usr/bin/cmake -DWITH_JAVA=0 -DPRECISION=8 -P /app/diffcomp/benchmark/libjpeg-turbo/cmakescripts/tjbenchtest.cmake

tjtest: CMakeFiles/tjtest
tjtest: CMakeFiles/tjtest.dir/build.make
.PHONY : tjtest

# Rule to build all files generated by this target.
CMakeFiles/tjtest.dir/build: tjtest
.PHONY : CMakeFiles/tjtest.dir/build

CMakeFiles/tjtest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tjtest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tjtest.dir/clean

CMakeFiles/tjtest.dir/depend:
	cd /app/diffcomp/benchmark/libturbo_o0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /app/diffcomp/benchmark/libjpeg-turbo /app/diffcomp/benchmark/libjpeg-turbo /app/diffcomp/benchmark/libturbo_o0 /app/diffcomp/benchmark/libturbo_o0 /app/diffcomp/benchmark/libturbo_o0/CMakeFiles/tjtest.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/tjtest.dir/depend

