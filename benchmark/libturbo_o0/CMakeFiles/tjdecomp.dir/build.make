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

# Include any dependencies generated for this target.
include CMakeFiles/tjdecomp.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tjdecomp.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tjdecomp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tjdecomp.dir/flags.make

CMakeFiles/tjdecomp.dir/src/tjdecomp.c.o: CMakeFiles/tjdecomp.dir/flags.make
CMakeFiles/tjdecomp.dir/src/tjdecomp.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/tjdecomp.c
CMakeFiles/tjdecomp.dir/src/tjdecomp.c.o: CMakeFiles/tjdecomp.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/tjdecomp.dir/src/tjdecomp.c.o"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/tjdecomp.dir/src/tjdecomp.c.o -MF CMakeFiles/tjdecomp.dir/src/tjdecomp.c.o.d -o CMakeFiles/tjdecomp.dir/src/tjdecomp.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/tjdecomp.c

CMakeFiles/tjdecomp.dir/src/tjdecomp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/tjdecomp.dir/src/tjdecomp.c.i"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/tjdecomp.c > CMakeFiles/tjdecomp.dir/src/tjdecomp.c.i

CMakeFiles/tjdecomp.dir/src/tjdecomp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/tjdecomp.dir/src/tjdecomp.c.s"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/tjdecomp.c -o CMakeFiles/tjdecomp.dir/src/tjdecomp.c.s

# Object files for target tjdecomp
tjdecomp_OBJECTS = \
"CMakeFiles/tjdecomp.dir/src/tjdecomp.c.o"

# External object files for target tjdecomp
tjdecomp_EXTERNAL_OBJECTS =

tjdecomp: CMakeFiles/tjdecomp.dir/src/tjdecomp.c.o
tjdecomp: CMakeFiles/tjdecomp.dir/build.make
tjdecomp: libturbojpeg.so.0.4.0
tjdecomp: CMakeFiles/tjdecomp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable tjdecomp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tjdecomp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tjdecomp.dir/build: tjdecomp
.PHONY : CMakeFiles/tjdecomp.dir/build

CMakeFiles/tjdecomp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tjdecomp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tjdecomp.dir/clean

CMakeFiles/tjdecomp.dir/depend:
	cd /app/diffcomp/benchmark/libturbo_o0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /app/diffcomp/benchmark/libjpeg-turbo /app/diffcomp/benchmark/libjpeg-turbo /app/diffcomp/benchmark/libturbo_o0 /app/diffcomp/benchmark/libturbo_o0 /app/diffcomp/benchmark/libturbo_o0/CMakeFiles/tjdecomp.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/tjdecomp.dir/depend

