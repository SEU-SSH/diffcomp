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
include sharedlib/CMakeFiles/cjpeg.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include sharedlib/CMakeFiles/cjpeg.dir/compiler_depend.make

# Include the progress variables for this target.
include sharedlib/CMakeFiles/cjpeg.dir/progress.make

# Include the compile flags for this target's objects.
include sharedlib/CMakeFiles/cjpeg.dir/flags.make

sharedlib/CMakeFiles/cjpeg.dir/__/src/cjpeg.c.o: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/src/cjpeg.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/cjpeg.c
sharedlib/CMakeFiles/cjpeg.dir/__/src/cjpeg.c.o: sharedlib/CMakeFiles/cjpeg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/src/cjpeg.c.o"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT sharedlib/CMakeFiles/cjpeg.dir/__/src/cjpeg.c.o -MF CMakeFiles/cjpeg.dir/__/src/cjpeg.c.o.d -o CMakeFiles/cjpeg.dir/__/src/cjpeg.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/cjpeg.c

sharedlib/CMakeFiles/cjpeg.dir/__/src/cjpeg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/src/cjpeg.c.i"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/cjpeg.c > CMakeFiles/cjpeg.dir/__/src/cjpeg.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/src/cjpeg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/src/cjpeg.c.s"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/cjpeg.c -o CMakeFiles/cjpeg.dir/__/src/cjpeg.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/src/cdjpeg.c.o: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/src/cdjpeg.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/cdjpeg.c
sharedlib/CMakeFiles/cjpeg.dir/__/src/cdjpeg.c.o: sharedlib/CMakeFiles/cjpeg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/src/cdjpeg.c.o"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT sharedlib/CMakeFiles/cjpeg.dir/__/src/cdjpeg.c.o -MF CMakeFiles/cjpeg.dir/__/src/cdjpeg.c.o.d -o CMakeFiles/cjpeg.dir/__/src/cdjpeg.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/cdjpeg.c

sharedlib/CMakeFiles/cjpeg.dir/__/src/cdjpeg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/src/cdjpeg.c.i"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/cdjpeg.c > CMakeFiles/cjpeg.dir/__/src/cdjpeg.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/src/cdjpeg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/src/cdjpeg.c.s"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/cdjpeg.c -o CMakeFiles/cjpeg.dir/__/src/cdjpeg.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/src/rdbmp.c.o: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/src/rdbmp.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/rdbmp.c
sharedlib/CMakeFiles/cjpeg.dir/__/src/rdbmp.c.o: sharedlib/CMakeFiles/cjpeg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/src/rdbmp.c.o"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT sharedlib/CMakeFiles/cjpeg.dir/__/src/rdbmp.c.o -MF CMakeFiles/cjpeg.dir/__/src/rdbmp.c.o.d -o CMakeFiles/cjpeg.dir/__/src/rdbmp.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/rdbmp.c

sharedlib/CMakeFiles/cjpeg.dir/__/src/rdbmp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/src/rdbmp.c.i"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/rdbmp.c > CMakeFiles/cjpeg.dir/__/src/rdbmp.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/src/rdbmp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/src/rdbmp.c.s"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/rdbmp.c -o CMakeFiles/cjpeg.dir/__/src/rdbmp.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/src/rdgif.c.o: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/src/rdgif.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/rdgif.c
sharedlib/CMakeFiles/cjpeg.dir/__/src/rdgif.c.o: sharedlib/CMakeFiles/cjpeg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/src/rdgif.c.o"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT sharedlib/CMakeFiles/cjpeg.dir/__/src/rdgif.c.o -MF CMakeFiles/cjpeg.dir/__/src/rdgif.c.o.d -o CMakeFiles/cjpeg.dir/__/src/rdgif.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/rdgif.c

sharedlib/CMakeFiles/cjpeg.dir/__/src/rdgif.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/src/rdgif.c.i"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/rdgif.c > CMakeFiles/cjpeg.dir/__/src/rdgif.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/src/rdgif.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/src/rdgif.c.s"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/rdgif.c -o CMakeFiles/cjpeg.dir/__/src/rdgif.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/src/rdppm.c.o: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/src/rdppm.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/rdppm.c
sharedlib/CMakeFiles/cjpeg.dir/__/src/rdppm.c.o: sharedlib/CMakeFiles/cjpeg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/src/rdppm.c.o"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT sharedlib/CMakeFiles/cjpeg.dir/__/src/rdppm.c.o -MF CMakeFiles/cjpeg.dir/__/src/rdppm.c.o.d -o CMakeFiles/cjpeg.dir/__/src/rdppm.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/rdppm.c

sharedlib/CMakeFiles/cjpeg.dir/__/src/rdppm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/src/rdppm.c.i"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/rdppm.c > CMakeFiles/cjpeg.dir/__/src/rdppm.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/src/rdppm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/src/rdppm.c.s"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/rdppm.c -o CMakeFiles/cjpeg.dir/__/src/rdppm.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/src/rdswitch.c.o: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/src/rdswitch.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/rdswitch.c
sharedlib/CMakeFiles/cjpeg.dir/__/src/rdswitch.c.o: sharedlib/CMakeFiles/cjpeg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/src/rdswitch.c.o"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT sharedlib/CMakeFiles/cjpeg.dir/__/src/rdswitch.c.o -MF CMakeFiles/cjpeg.dir/__/src/rdswitch.c.o.d -o CMakeFiles/cjpeg.dir/__/src/rdswitch.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/rdswitch.c

sharedlib/CMakeFiles/cjpeg.dir/__/src/rdswitch.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/src/rdswitch.c.i"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/rdswitch.c > CMakeFiles/cjpeg.dir/__/src/rdswitch.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/src/rdswitch.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/src/rdswitch.c.s"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/rdswitch.c -o CMakeFiles/cjpeg.dir/__/src/rdswitch.c.s

sharedlib/CMakeFiles/cjpeg.dir/__/src/rdtarga.c.o: sharedlib/CMakeFiles/cjpeg.dir/flags.make
sharedlib/CMakeFiles/cjpeg.dir/__/src/rdtarga.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/rdtarga.c
sharedlib/CMakeFiles/cjpeg.dir/__/src/rdtarga.c.o: sharedlib/CMakeFiles/cjpeg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object sharedlib/CMakeFiles/cjpeg.dir/__/src/rdtarga.c.o"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT sharedlib/CMakeFiles/cjpeg.dir/__/src/rdtarga.c.o -MF CMakeFiles/cjpeg.dir/__/src/rdtarga.c.o.d -o CMakeFiles/cjpeg.dir/__/src/rdtarga.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/rdtarga.c

sharedlib/CMakeFiles/cjpeg.dir/__/src/rdtarga.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cjpeg.dir/__/src/rdtarga.c.i"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/rdtarga.c > CMakeFiles/cjpeg.dir/__/src/rdtarga.c.i

sharedlib/CMakeFiles/cjpeg.dir/__/src/rdtarga.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cjpeg.dir/__/src/rdtarga.c.s"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && /app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/rdtarga.c -o CMakeFiles/cjpeg.dir/__/src/rdtarga.c.s

# Object files for target cjpeg
cjpeg_OBJECTS = \
"CMakeFiles/cjpeg.dir/__/src/cjpeg.c.o" \
"CMakeFiles/cjpeg.dir/__/src/cdjpeg.c.o" \
"CMakeFiles/cjpeg.dir/__/src/rdbmp.c.o" \
"CMakeFiles/cjpeg.dir/__/src/rdgif.c.o" \
"CMakeFiles/cjpeg.dir/__/src/rdppm.c.o" \
"CMakeFiles/cjpeg.dir/__/src/rdswitch.c.o" \
"CMakeFiles/cjpeg.dir/__/src/rdtarga.c.o"

# External object files for target cjpeg
cjpeg_EXTERNAL_OBJECTS = \
"/app/diffcomp/benchmark/libturbo_o3/sharedlib/CMakeFiles/cjpeg12.dir/__/src/rdppm.c.o" \
"/app/diffcomp/benchmark/libturbo_o3/sharedlib/CMakeFiles/cjpeg16.dir/__/src/rdppm.c.o"

cjpeg: sharedlib/CMakeFiles/cjpeg.dir/__/src/cjpeg.c.o
cjpeg: sharedlib/CMakeFiles/cjpeg.dir/__/src/cdjpeg.c.o
cjpeg: sharedlib/CMakeFiles/cjpeg.dir/__/src/rdbmp.c.o
cjpeg: sharedlib/CMakeFiles/cjpeg.dir/__/src/rdgif.c.o
cjpeg: sharedlib/CMakeFiles/cjpeg.dir/__/src/rdppm.c.o
cjpeg: sharedlib/CMakeFiles/cjpeg.dir/__/src/rdswitch.c.o
cjpeg: sharedlib/CMakeFiles/cjpeg.dir/__/src/rdtarga.c.o
cjpeg: sharedlib/CMakeFiles/cjpeg12.dir/__/src/rdppm.c.o
cjpeg: sharedlib/CMakeFiles/cjpeg16.dir/__/src/rdppm.c.o
cjpeg: sharedlib/CMakeFiles/cjpeg.dir/build.make
cjpeg: libjpeg.so.62.4.0
cjpeg: sharedlib/CMakeFiles/cjpeg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/app/diffcomp/benchmark/libturbo_o3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C executable ../cjpeg"
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cjpeg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sharedlib/CMakeFiles/cjpeg.dir/build: cjpeg
.PHONY : sharedlib/CMakeFiles/cjpeg.dir/build

sharedlib/CMakeFiles/cjpeg.dir/clean:
	cd /app/diffcomp/benchmark/libturbo_o3/sharedlib && $(CMAKE_COMMAND) -P CMakeFiles/cjpeg.dir/cmake_clean.cmake
.PHONY : sharedlib/CMakeFiles/cjpeg.dir/clean

sharedlib/CMakeFiles/cjpeg.dir/depend:
	cd /app/diffcomp/benchmark/libturbo_o3 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /app/diffcomp/benchmark/libjpeg-turbo /app/diffcomp/benchmark/libjpeg-turbo/sharedlib /app/diffcomp/benchmark/libturbo_o3 /app/diffcomp/benchmark/libturbo_o3/sharedlib /app/diffcomp/benchmark/libturbo_o3/sharedlib/CMakeFiles/cjpeg.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : sharedlib/CMakeFiles/cjpeg.dir/depend

