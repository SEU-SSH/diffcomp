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
include CMakeFiles/jpeg16.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/jpeg16.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/jpeg16.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/jpeg16.dir/flags.make

CMakeFiles/jpeg16.dir/src/jcapistd.c.o: CMakeFiles/jpeg16.dir/flags.make
CMakeFiles/jpeg16.dir/src/jcapistd.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/jcapistd.c
CMakeFiles/jpeg16.dir/src/jcapistd.c.o: CMakeFiles/jpeg16.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/jpeg16.dir/src/jcapistd.c.o"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/jpeg16.dir/src/jcapistd.c.o -MF CMakeFiles/jpeg16.dir/src/jcapistd.c.o.d -o CMakeFiles/jpeg16.dir/src/jcapistd.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/jcapistd.c

CMakeFiles/jpeg16.dir/src/jcapistd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpeg16.dir/src/jcapistd.c.i"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/jcapistd.c > CMakeFiles/jpeg16.dir/src/jcapistd.c.i

CMakeFiles/jpeg16.dir/src/jcapistd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpeg16.dir/src/jcapistd.c.s"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/jcapistd.c -o CMakeFiles/jpeg16.dir/src/jcapistd.c.s

CMakeFiles/jpeg16.dir/src/jccolor.c.o: CMakeFiles/jpeg16.dir/flags.make
CMakeFiles/jpeg16.dir/src/jccolor.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/jccolor.c
CMakeFiles/jpeg16.dir/src/jccolor.c.o: CMakeFiles/jpeg16.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/jpeg16.dir/src/jccolor.c.o"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/jpeg16.dir/src/jccolor.c.o -MF CMakeFiles/jpeg16.dir/src/jccolor.c.o.d -o CMakeFiles/jpeg16.dir/src/jccolor.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/jccolor.c

CMakeFiles/jpeg16.dir/src/jccolor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpeg16.dir/src/jccolor.c.i"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/jccolor.c > CMakeFiles/jpeg16.dir/src/jccolor.c.i

CMakeFiles/jpeg16.dir/src/jccolor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpeg16.dir/src/jccolor.c.s"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/jccolor.c -o CMakeFiles/jpeg16.dir/src/jccolor.c.s

CMakeFiles/jpeg16.dir/src/jcdiffct.c.o: CMakeFiles/jpeg16.dir/flags.make
CMakeFiles/jpeg16.dir/src/jcdiffct.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/jcdiffct.c
CMakeFiles/jpeg16.dir/src/jcdiffct.c.o: CMakeFiles/jpeg16.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/jpeg16.dir/src/jcdiffct.c.o"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/jpeg16.dir/src/jcdiffct.c.o -MF CMakeFiles/jpeg16.dir/src/jcdiffct.c.o.d -o CMakeFiles/jpeg16.dir/src/jcdiffct.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/jcdiffct.c

CMakeFiles/jpeg16.dir/src/jcdiffct.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpeg16.dir/src/jcdiffct.c.i"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/jcdiffct.c > CMakeFiles/jpeg16.dir/src/jcdiffct.c.i

CMakeFiles/jpeg16.dir/src/jcdiffct.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpeg16.dir/src/jcdiffct.c.s"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/jcdiffct.c -o CMakeFiles/jpeg16.dir/src/jcdiffct.c.s

CMakeFiles/jpeg16.dir/src/jclossls.c.o: CMakeFiles/jpeg16.dir/flags.make
CMakeFiles/jpeg16.dir/src/jclossls.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/jclossls.c
CMakeFiles/jpeg16.dir/src/jclossls.c.o: CMakeFiles/jpeg16.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/jpeg16.dir/src/jclossls.c.o"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/jpeg16.dir/src/jclossls.c.o -MF CMakeFiles/jpeg16.dir/src/jclossls.c.o.d -o CMakeFiles/jpeg16.dir/src/jclossls.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/jclossls.c

CMakeFiles/jpeg16.dir/src/jclossls.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpeg16.dir/src/jclossls.c.i"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/jclossls.c > CMakeFiles/jpeg16.dir/src/jclossls.c.i

CMakeFiles/jpeg16.dir/src/jclossls.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpeg16.dir/src/jclossls.c.s"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/jclossls.c -o CMakeFiles/jpeg16.dir/src/jclossls.c.s

CMakeFiles/jpeg16.dir/src/jcmainct.c.o: CMakeFiles/jpeg16.dir/flags.make
CMakeFiles/jpeg16.dir/src/jcmainct.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/jcmainct.c
CMakeFiles/jpeg16.dir/src/jcmainct.c.o: CMakeFiles/jpeg16.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/jpeg16.dir/src/jcmainct.c.o"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/jpeg16.dir/src/jcmainct.c.o -MF CMakeFiles/jpeg16.dir/src/jcmainct.c.o.d -o CMakeFiles/jpeg16.dir/src/jcmainct.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/jcmainct.c

CMakeFiles/jpeg16.dir/src/jcmainct.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpeg16.dir/src/jcmainct.c.i"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/jcmainct.c > CMakeFiles/jpeg16.dir/src/jcmainct.c.i

CMakeFiles/jpeg16.dir/src/jcmainct.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpeg16.dir/src/jcmainct.c.s"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/jcmainct.c -o CMakeFiles/jpeg16.dir/src/jcmainct.c.s

CMakeFiles/jpeg16.dir/src/jcprepct.c.o: CMakeFiles/jpeg16.dir/flags.make
CMakeFiles/jpeg16.dir/src/jcprepct.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/jcprepct.c
CMakeFiles/jpeg16.dir/src/jcprepct.c.o: CMakeFiles/jpeg16.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/jpeg16.dir/src/jcprepct.c.o"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/jpeg16.dir/src/jcprepct.c.o -MF CMakeFiles/jpeg16.dir/src/jcprepct.c.o.d -o CMakeFiles/jpeg16.dir/src/jcprepct.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/jcprepct.c

CMakeFiles/jpeg16.dir/src/jcprepct.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpeg16.dir/src/jcprepct.c.i"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/jcprepct.c > CMakeFiles/jpeg16.dir/src/jcprepct.c.i

CMakeFiles/jpeg16.dir/src/jcprepct.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpeg16.dir/src/jcprepct.c.s"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/jcprepct.c -o CMakeFiles/jpeg16.dir/src/jcprepct.c.s

CMakeFiles/jpeg16.dir/src/jcsample.c.o: CMakeFiles/jpeg16.dir/flags.make
CMakeFiles/jpeg16.dir/src/jcsample.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/jcsample.c
CMakeFiles/jpeg16.dir/src/jcsample.c.o: CMakeFiles/jpeg16.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/jpeg16.dir/src/jcsample.c.o"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/jpeg16.dir/src/jcsample.c.o -MF CMakeFiles/jpeg16.dir/src/jcsample.c.o.d -o CMakeFiles/jpeg16.dir/src/jcsample.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/jcsample.c

CMakeFiles/jpeg16.dir/src/jcsample.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpeg16.dir/src/jcsample.c.i"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/jcsample.c > CMakeFiles/jpeg16.dir/src/jcsample.c.i

CMakeFiles/jpeg16.dir/src/jcsample.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpeg16.dir/src/jcsample.c.s"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/jcsample.c -o CMakeFiles/jpeg16.dir/src/jcsample.c.s

CMakeFiles/jpeg16.dir/src/jdapistd.c.o: CMakeFiles/jpeg16.dir/flags.make
CMakeFiles/jpeg16.dir/src/jdapistd.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/jdapistd.c
CMakeFiles/jpeg16.dir/src/jdapistd.c.o: CMakeFiles/jpeg16.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/jpeg16.dir/src/jdapistd.c.o"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/jpeg16.dir/src/jdapistd.c.o -MF CMakeFiles/jpeg16.dir/src/jdapistd.c.o.d -o CMakeFiles/jpeg16.dir/src/jdapistd.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/jdapistd.c

CMakeFiles/jpeg16.dir/src/jdapistd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpeg16.dir/src/jdapistd.c.i"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/jdapistd.c > CMakeFiles/jpeg16.dir/src/jdapistd.c.i

CMakeFiles/jpeg16.dir/src/jdapistd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpeg16.dir/src/jdapistd.c.s"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/jdapistd.c -o CMakeFiles/jpeg16.dir/src/jdapistd.c.s

CMakeFiles/jpeg16.dir/src/jdcolor.c.o: CMakeFiles/jpeg16.dir/flags.make
CMakeFiles/jpeg16.dir/src/jdcolor.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/jdcolor.c
CMakeFiles/jpeg16.dir/src/jdcolor.c.o: CMakeFiles/jpeg16.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/jpeg16.dir/src/jdcolor.c.o"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/jpeg16.dir/src/jdcolor.c.o -MF CMakeFiles/jpeg16.dir/src/jdcolor.c.o.d -o CMakeFiles/jpeg16.dir/src/jdcolor.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/jdcolor.c

CMakeFiles/jpeg16.dir/src/jdcolor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpeg16.dir/src/jdcolor.c.i"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/jdcolor.c > CMakeFiles/jpeg16.dir/src/jdcolor.c.i

CMakeFiles/jpeg16.dir/src/jdcolor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpeg16.dir/src/jdcolor.c.s"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/jdcolor.c -o CMakeFiles/jpeg16.dir/src/jdcolor.c.s

CMakeFiles/jpeg16.dir/src/jddiffct.c.o: CMakeFiles/jpeg16.dir/flags.make
CMakeFiles/jpeg16.dir/src/jddiffct.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/jddiffct.c
CMakeFiles/jpeg16.dir/src/jddiffct.c.o: CMakeFiles/jpeg16.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/jpeg16.dir/src/jddiffct.c.o"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/jpeg16.dir/src/jddiffct.c.o -MF CMakeFiles/jpeg16.dir/src/jddiffct.c.o.d -o CMakeFiles/jpeg16.dir/src/jddiffct.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/jddiffct.c

CMakeFiles/jpeg16.dir/src/jddiffct.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpeg16.dir/src/jddiffct.c.i"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/jddiffct.c > CMakeFiles/jpeg16.dir/src/jddiffct.c.i

CMakeFiles/jpeg16.dir/src/jddiffct.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpeg16.dir/src/jddiffct.c.s"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/jddiffct.c -o CMakeFiles/jpeg16.dir/src/jddiffct.c.s

CMakeFiles/jpeg16.dir/src/jdlossls.c.o: CMakeFiles/jpeg16.dir/flags.make
CMakeFiles/jpeg16.dir/src/jdlossls.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/jdlossls.c
CMakeFiles/jpeg16.dir/src/jdlossls.c.o: CMakeFiles/jpeg16.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/jpeg16.dir/src/jdlossls.c.o"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/jpeg16.dir/src/jdlossls.c.o -MF CMakeFiles/jpeg16.dir/src/jdlossls.c.o.d -o CMakeFiles/jpeg16.dir/src/jdlossls.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/jdlossls.c

CMakeFiles/jpeg16.dir/src/jdlossls.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpeg16.dir/src/jdlossls.c.i"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/jdlossls.c > CMakeFiles/jpeg16.dir/src/jdlossls.c.i

CMakeFiles/jpeg16.dir/src/jdlossls.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpeg16.dir/src/jdlossls.c.s"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/jdlossls.c -o CMakeFiles/jpeg16.dir/src/jdlossls.c.s

CMakeFiles/jpeg16.dir/src/jdmainct.c.o: CMakeFiles/jpeg16.dir/flags.make
CMakeFiles/jpeg16.dir/src/jdmainct.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/jdmainct.c
CMakeFiles/jpeg16.dir/src/jdmainct.c.o: CMakeFiles/jpeg16.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/jpeg16.dir/src/jdmainct.c.o"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/jpeg16.dir/src/jdmainct.c.o -MF CMakeFiles/jpeg16.dir/src/jdmainct.c.o.d -o CMakeFiles/jpeg16.dir/src/jdmainct.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/jdmainct.c

CMakeFiles/jpeg16.dir/src/jdmainct.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpeg16.dir/src/jdmainct.c.i"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/jdmainct.c > CMakeFiles/jpeg16.dir/src/jdmainct.c.i

CMakeFiles/jpeg16.dir/src/jdmainct.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpeg16.dir/src/jdmainct.c.s"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/jdmainct.c -o CMakeFiles/jpeg16.dir/src/jdmainct.c.s

CMakeFiles/jpeg16.dir/src/jdpostct.c.o: CMakeFiles/jpeg16.dir/flags.make
CMakeFiles/jpeg16.dir/src/jdpostct.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/jdpostct.c
CMakeFiles/jpeg16.dir/src/jdpostct.c.o: CMakeFiles/jpeg16.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/jpeg16.dir/src/jdpostct.c.o"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/jpeg16.dir/src/jdpostct.c.o -MF CMakeFiles/jpeg16.dir/src/jdpostct.c.o.d -o CMakeFiles/jpeg16.dir/src/jdpostct.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/jdpostct.c

CMakeFiles/jpeg16.dir/src/jdpostct.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpeg16.dir/src/jdpostct.c.i"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/jdpostct.c > CMakeFiles/jpeg16.dir/src/jdpostct.c.i

CMakeFiles/jpeg16.dir/src/jdpostct.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpeg16.dir/src/jdpostct.c.s"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/jdpostct.c -o CMakeFiles/jpeg16.dir/src/jdpostct.c.s

CMakeFiles/jpeg16.dir/src/jdsample.c.o: CMakeFiles/jpeg16.dir/flags.make
CMakeFiles/jpeg16.dir/src/jdsample.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/jdsample.c
CMakeFiles/jpeg16.dir/src/jdsample.c.o: CMakeFiles/jpeg16.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/jpeg16.dir/src/jdsample.c.o"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/jpeg16.dir/src/jdsample.c.o -MF CMakeFiles/jpeg16.dir/src/jdsample.c.o.d -o CMakeFiles/jpeg16.dir/src/jdsample.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/jdsample.c

CMakeFiles/jpeg16.dir/src/jdsample.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpeg16.dir/src/jdsample.c.i"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/jdsample.c > CMakeFiles/jpeg16.dir/src/jdsample.c.i

CMakeFiles/jpeg16.dir/src/jdsample.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpeg16.dir/src/jdsample.c.s"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/jdsample.c -o CMakeFiles/jpeg16.dir/src/jdsample.c.s

CMakeFiles/jpeg16.dir/src/jutils.c.o: CMakeFiles/jpeg16.dir/flags.make
CMakeFiles/jpeg16.dir/src/jutils.c.o: /app/diffcomp/benchmark/libjpeg-turbo/src/jutils.c
CMakeFiles/jpeg16.dir/src/jutils.c.o: CMakeFiles/jpeg16.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/libturbo_o0/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/jpeg16.dir/src/jutils.c.o"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/jpeg16.dir/src/jutils.c.o -MF CMakeFiles/jpeg16.dir/src/jutils.c.o.d -o CMakeFiles/jpeg16.dir/src/jutils.c.o -c /app/diffcomp/benchmark/libjpeg-turbo/src/jutils.c

CMakeFiles/jpeg16.dir/src/jutils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/jpeg16.dir/src/jutils.c.i"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /app/diffcomp/benchmark/libjpeg-turbo/src/jutils.c > CMakeFiles/jpeg16.dir/src/jutils.c.i

CMakeFiles/jpeg16.dir/src/jutils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/jpeg16.dir/src/jutils.c.s"
	/app/AFLplusplus/afl-clang-fast $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /app/diffcomp/benchmark/libjpeg-turbo/src/jutils.c -o CMakeFiles/jpeg16.dir/src/jutils.c.s

jpeg16: CMakeFiles/jpeg16.dir/src/jcapistd.c.o
jpeg16: CMakeFiles/jpeg16.dir/src/jccolor.c.o
jpeg16: CMakeFiles/jpeg16.dir/src/jcdiffct.c.o
jpeg16: CMakeFiles/jpeg16.dir/src/jclossls.c.o
jpeg16: CMakeFiles/jpeg16.dir/src/jcmainct.c.o
jpeg16: CMakeFiles/jpeg16.dir/src/jcprepct.c.o
jpeg16: CMakeFiles/jpeg16.dir/src/jcsample.c.o
jpeg16: CMakeFiles/jpeg16.dir/src/jdapistd.c.o
jpeg16: CMakeFiles/jpeg16.dir/src/jdcolor.c.o
jpeg16: CMakeFiles/jpeg16.dir/src/jddiffct.c.o
jpeg16: CMakeFiles/jpeg16.dir/src/jdlossls.c.o
jpeg16: CMakeFiles/jpeg16.dir/src/jdmainct.c.o
jpeg16: CMakeFiles/jpeg16.dir/src/jdpostct.c.o
jpeg16: CMakeFiles/jpeg16.dir/src/jdsample.c.o
jpeg16: CMakeFiles/jpeg16.dir/src/jutils.c.o
jpeg16: CMakeFiles/jpeg16.dir/build.make
.PHONY : jpeg16

# Rule to build all files generated by this target.
CMakeFiles/jpeg16.dir/build: jpeg16
.PHONY : CMakeFiles/jpeg16.dir/build

CMakeFiles/jpeg16.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/jpeg16.dir/cmake_clean.cmake
.PHONY : CMakeFiles/jpeg16.dir/clean

CMakeFiles/jpeg16.dir/depend:
	cd /app/diffcomp/benchmark/libturbo_o0 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /app/diffcomp/benchmark/libjpeg-turbo /app/diffcomp/benchmark/libjpeg-turbo /app/diffcomp/benchmark/libturbo_o0 /app/diffcomp/benchmark/libturbo_o0 /app/diffcomp/benchmark/libturbo_o0/CMakeFiles/jpeg16.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/jpeg16.dir/depend

