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
CMAKE_BINARY_DIR = /app/diffcomp/benchmark/libturbo_o3

# Include any dependencies generated for this target.
include CMakeFiles/cjpeg12-static.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cjpeg12-static.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cjpeg12-static.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cjpeg12-static.dir/flags.make

CMakeFiles/cjpeg12-static.dir/src/rdppm.c.o: CMakeFiles/cjpeg12-static.dir/flags.make
CMakeFiles/cjpeg12-static.dir/src/rdppm.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/rdppm.c
CMakeFiles/cjpeg12-static.dir/src/rdppm.c.o: CMakeFiles/cjpeg12-static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/cjpeg12-static.dir/src/rdppm.c.o"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/cjpeg12-static.dir/src/rdppm.c.o -MF CMakeFiles/cjpeg12-static.dir/src/rdppm.c.o.d -o CMakeFiles/cjpeg12-static.dir/src/rdppm.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/rdppm.c

CMakeFiles/cjpeg12-static.dir/src/rdppm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cjpeg12-static.dir/src/rdppm.c.i"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/rdppm.c > CMakeFiles/cjpeg12-static.dir/src/rdppm.c.i

CMakeFiles/cjpeg12-static.dir/src/rdppm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cjpeg12-static.dir/src/rdppm.c.s"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/rdppm.c -o CMakeFiles/cjpeg12-static.dir/src/rdppm.c.s

cjpeg12-static: CMakeFiles/cjpeg12-static.dir/src/rdppm.c.o
cjpeg12-static: CMakeFiles/cjpeg12-static.dir/build.make
.PHONY : cjpeg12-static

# Rule to build all files generated by this target.
CMakeFiles/cjpeg12-static.dir/build: cjpeg12-static
.PHONY : CMakeFiles/cjpeg12-static.dir/build

CMakeFiles/cjpeg12-static.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cjpeg12-static.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cjpeg12-static.dir/clean

CMakeFiles/cjpeg12-static.dir/depend:
	cd /app/diffcomp/benchmark/libturbo_o3 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /app/diffcomp/benchmark/libjpeg-turbo /app/diffcomp/benchmark/libjpeg-turbo /app/diffcomp/benchmark/libturbo_o3 /app/diffcomp/benchmark/libturbo_o3 /app/diffcomp/benchmark/libturbo_o3/CMakeFiles/cjpeg12-static.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/cjpeg12-static.dir/depend

