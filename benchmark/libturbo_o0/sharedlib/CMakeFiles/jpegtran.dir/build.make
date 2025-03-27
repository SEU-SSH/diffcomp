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
include sharedlib/CMakeFiles/jpegtran.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include sharedlib/CMakeFiles/jpegtran.dir/compiler_depend.make

# Include the progress variables for this target.
include sharedlib/CMakeFiles/jpegtran.dir/progress.make

# Include the compile flags for this target's objects.
include sharedlib/CMakeFiles/jpegtran.dir/flags.make

sharedlib/CMakeFiles/jpegtran.dir/__/src/jpegtran.c.o: sharedlib/CMakeFiles/jpegtran.dir/flags.make
sharedlib/CMakeFiles/jpegtran.dir/__/src/jpegtran.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/jpegtran.c
sharedlib/CMakeFiles/jpegtran.dir/__/src/jpegtran.c.o: sharedlib/CMakeFiles/jpegtran.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object sharedlib/CMakeFiles/jpegtran.dir/__/src/jpegtran.c.o"
	cd /app/diffcomp/benchmark/libturbo_o0/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT sharedlib/CMakeFiles/jpegtran.dir/__/src/jpegtran.c.o -MF CMakeFiles/jpegtran.dir/__/src/jpegtran.c.o.d -o CMakeFiles/jpegtran.dir/__/src/jpegtran.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/jpegtran.c

sharedlib/CMakeFiles/jpegtran.dir/__/src/jpegtran.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpegtran.dir/__/src/jpegtran.c.i"
	cd /app/diffcomp/benchmark/libturbo_o0/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/jpegtran.c > CMakeFiles/jpegtran.dir/__/src/jpegtran.c.i

sharedlib/CMakeFiles/jpegtran.dir/__/src/jpegtran.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpegtran.dir/__/src/jpegtran.c.s"
	cd /app/diffcomp/benchmark/libturbo_o0/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/jpegtran.c -o CMakeFiles/jpegtran.dir/__/src/jpegtran.c.s

sharedlib/CMakeFiles/jpegtran.dir/__/src/cdjpeg.c.o: sharedlib/CMakeFiles/jpegtran.dir/flags.make
sharedlib/CMakeFiles/jpegtran.dir/__/src/cdjpeg.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/cdjpeg.c
sharedlib/CMakeFiles/jpegtran.dir/__/src/cdjpeg.c.o: sharedlib/CMakeFiles/jpegtran.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object sharedlib/CMakeFiles/jpegtran.dir/__/src/cdjpeg.c.o"
	cd /app/diffcomp/benchmark/libturbo_o0/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT sharedlib/CMakeFiles/jpegtran.dir/__/src/cdjpeg.c.o -MF CMakeFiles/jpegtran.dir/__/src/cdjpeg.c.o.d -o CMakeFiles/jpegtran.dir/__/src/cdjpeg.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/cdjpeg.c

sharedlib/CMakeFiles/jpegtran.dir/__/src/cdjpeg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpegtran.dir/__/src/cdjpeg.c.i"
	cd /app/diffcomp/benchmark/libturbo_o0/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/cdjpeg.c > CMakeFiles/jpegtran.dir/__/src/cdjpeg.c.i

sharedlib/CMakeFiles/jpegtran.dir/__/src/cdjpeg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpegtran.dir/__/src/cdjpeg.c.s"
	cd /app/diffcomp/benchmark/libturbo_o0/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/cdjpeg.c -o CMakeFiles/jpegtran.dir/__/src/cdjpeg.c.s

sharedlib/CMakeFiles/jpegtran.dir/__/src/rdswitch.c.o: sharedlib/CMakeFiles/jpegtran.dir/flags.make
sharedlib/CMakeFiles/jpegtran.dir/__/src/rdswitch.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/rdswitch.c
sharedlib/CMakeFiles/jpegtran.dir/__/src/rdswitch.c.o: sharedlib/CMakeFiles/jpegtran.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object sharedlib/CMakeFiles/jpegtran.dir/__/src/rdswitch.c.o"
	cd /app/diffcomp/benchmark/libturbo_o0/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT sharedlib/CMakeFiles/jpegtran.dir/__/src/rdswitch.c.o -MF CMakeFiles/jpegtran.dir/__/src/rdswitch.c.o.d -o CMakeFiles/jpegtran.dir/__/src/rdswitch.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/rdswitch.c

sharedlib/CMakeFiles/jpegtran.dir/__/src/rdswitch.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpegtran.dir/__/src/rdswitch.c.i"
	cd /app/diffcomp/benchmark/libturbo_o0/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/rdswitch.c > CMakeFiles/jpegtran.dir/__/src/rdswitch.c.i

sharedlib/CMakeFiles/jpegtran.dir/__/src/rdswitch.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpegtran.dir/__/src/rdswitch.c.s"
	cd /app/diffcomp/benchmark/libturbo_o0/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/rdswitch.c -o CMakeFiles/jpegtran.dir/__/src/rdswitch.c.s

sharedlib/CMakeFiles/jpegtran.dir/__/src/transupp.c.o: sharedlib/CMakeFiles/jpegtran.dir/flags.make
sharedlib/CMakeFiles/jpegtran.dir/__/src/transupp.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/transupp.c
sharedlib/CMakeFiles/jpegtran.dir/__/src/transupp.c.o: sharedlib/CMakeFiles/jpegtran.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object sharedlib/CMakeFiles/jpegtran.dir/__/src/transupp.c.o"
	cd /app/diffcomp/benchmark/libturbo_o0/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT sharedlib/CMakeFiles/jpegtran.dir/__/src/transupp.c.o -MF CMakeFiles/jpegtran.dir/__/src/transupp.c.o.d -o CMakeFiles/jpegtran.dir/__/src/transupp.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/transupp.c

sharedlib/CMakeFiles/jpegtran.dir/__/src/transupp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpegtran.dir/__/src/transupp.c.i"
	cd /app/diffcomp/benchmark/libturbo_o0/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/transupp.c > CMakeFiles/jpegtran.dir/__/src/transupp.c.i

sharedlib/CMakeFiles/jpegtran.dir/__/src/transupp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpegtran.dir/__/src/transupp.c.s"
	cd /app/diffcomp/benchmark/libturbo_o0/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/transupp.c -o CMakeFiles/jpegtran.dir/__/src/transupp.c.s

# Object files for target jpegtran
jpegtran_OBJECTS = \
"CMakeFiles/jpegtran.dir/__/src/jpegtran.c.o" \
"CMakeFiles/jpegtran.dir/__/src/cdjpeg.c.o" \
"CMakeFiles/jpegtran.dir/__/src/rdswitch.c.o" \
"CMakeFiles/jpegtran.dir/__/src/transupp.c.o"

# External object files for target jpegtran
jpegtran_EXTERNAL_OBJECTS =

jpegtran: sharedlib/CMakeFiles/jpegtran.dir/__/src/jpegtran.c.o
jpegtran: sharedlib/CMakeFiles/jpegtran.dir/__/src/cdjpeg.c.o
jpegtran: sharedlib/CMakeFiles/jpegtran.dir/__/src/rdswitch.c.o
jpegtran: sharedlib/CMakeFiles/jpegtran.dir/__/src/transupp.c.o
jpegtran: sharedlib/CMakeFiles/jpegtran.dir/build.make
jpegtran: libjpeg.so.62.4.0
jpegtran: sharedlib/CMakeFiles/jpegtran.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable ../jpegtran"
	cd /app/diffcomp/benchmark/libturbo_o0/sharedlib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/jpegtran.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sharedlib/CMakeFiles/jpegtran.dir/build: jpegtran
.PHONY : sharedlib/CMakeFiles/jpegtran.dir/build

sharedlib/CMakeFiles/jpegtran.dir/clean:
	cd /app/diffcomp/benchmark/libturbo_o0/sharedlib && $(CMAKE_COMMAND) -P CMakeFiles/jpegtran.dir/cmake_clean.cmake
.PHONY : sharedlib/CMakeFiles/jpegtran.dir/clean

sharedlib/CMakeFiles/jpegtran.dir/depend:
	cd /app/diffcomp/benchmark/libturbo_o0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /app/diffcomp/benchmark/libjpeg-turbo /app/diffcomp/benchmark/libjpeg-turbo/sharedlib /app/diffcomp/benchmark/libturbo_o0 /app/diffcomp/benchmark/libturbo_o0/sharedlib /app/diffcomp/benchmark/libturbo_o0/sharedlib/CMakeFiles/jpegtran.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : sharedlib/CMakeFiles/jpegtran.dir/depend

