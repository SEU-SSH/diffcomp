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
include CMakeFiles/example-static.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/example-static.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/example-static.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/example-static.dir/flags.make

CMakeFiles/example-static.dir/src/example.c.o: CMakeFiles/example-static.dir/flags.make
CMakeFiles/example-static.dir/src/example.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/example.c
CMakeFiles/example-static.dir/src/example.c.o: CMakeFiles/example-static.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/example-static.dir/src/example.c.o"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/example-static.dir/src/example.c.o -MF CMakeFiles/example-static.dir/src/example.c.o.d -o CMakeFiles/example-static.dir/src/example.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/example.c

CMakeFiles/example-static.dir/src/example.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/example-static.dir/src/example.c.i"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/example.c > CMakeFiles/example-static.dir/src/example.c.i

CMakeFiles/example-static.dir/src/example.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/example-static.dir/src/example.c.s"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/example.c -o CMakeFiles/example-static.dir/src/example.c.s

# Object files for target example-static
example__static_OBJECTS = \
"CMakeFiles/example-static.dir/src/example.c.o"

# External object files for target example-static
example__static_EXTERNAL_OBJECTS =

example-static: CMakeFiles/example-static.dir/src/example.c.o
example-static: CMakeFiles/example-static.dir/build.make
example-static: libjpeg.a
example-static: CMakeFiles/example-static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/app/diffcomp/benchmark/libturbo_o3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable example-static"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example-static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/example-static.dir/build: example-static
.PHONY : CMakeFiles/example-static.dir/build

CMakeFiles/example-static.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/example-static.dir/cmake_clean.cmake
.PHONY : CMakeFiles/example-static.dir/clean

CMakeFiles/example-static.dir/depend:
	cd /app/diffcomp/benchmark/libturbo_o3 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /app/diffcomp/benchmark/libjpeg-turbo /app/diffcomp/benchmark/libjpeg-turbo /app/diffcomp/benchmark/libturbo_o3 /app/diffcomp/benchmark/libturbo_o3 /app/diffcomp/benchmark/libturbo_o3/CMakeFiles/example-static.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/example-static.dir/depend

