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
CMAKE_SOURCE_DIR = /app/diffcomp/benchmark/xpdf-4.05

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /app/diffcomp/benchmark/xpdf-4.05/build

# Include any dependencies generated for this target.
include xpdf/CMakeFiles/pdfdetach.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include xpdf/CMakeFiles/pdfdetach.dir/compiler_depend.make

# Include the progress variables for this target.
include xpdf/CMakeFiles/pdfdetach.dir/progress.make

# Include the compile flags for this target's objects.
include xpdf/CMakeFiles/pdfdetach.dir/flags.make

xpdf/CMakeFiles/pdfdetach.dir/pdfdetach.cc.o: xpdf/CMakeFiles/pdfdetach.dir/flags.make
xpdf/CMakeFiles/pdfdetach.dir/pdfdetach.cc.o: /app/diffcomp/benchmark/xpdf-4.05/xpdf/pdfdetach.cc
xpdf/CMakeFiles/pdfdetach.dir/pdfdetach.cc.o: xpdf/CMakeFiles/pdfdetach.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/app/diffcomp/benchmark/xpdf-4.05/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object xpdf/CMakeFiles/pdfdetach.dir/pdfdetach.cc.o"
	cd /app/diffcomp/benchmark/xpdf-4.05/build/xpdf && /app/AFLplusplus/afl-clang-fast++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT xpdf/CMakeFiles/pdfdetach.dir/pdfdetach.cc.o -MF CMakeFiles/pdfdetach.dir/pdfdetach.cc.o.d -o CMakeFiles/pdfdetach.dir/pdfdetach.cc.o -c /app/diffcomp/benchmark/xpdf-4.05/xpdf/pdfdetach.cc

xpdf/CMakeFiles/pdfdetach.dir/pdfdetach.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pdfdetach.dir/pdfdetach.cc.i"
	cd /app/diffcomp/benchmark/xpdf-4.05/build/xpdf && /app/AFLplusplus/afl-clang-fast++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /app/diffcomp/benchmark/xpdf-4.05/xpdf/pdfdetach.cc > CMakeFiles/pdfdetach.dir/pdfdetach.cc.i

xpdf/CMakeFiles/pdfdetach.dir/pdfdetach.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pdfdetach.dir/pdfdetach.cc.s"
	cd /app/diffcomp/benchmark/xpdf-4.05/build/xpdf && /app/AFLplusplus/afl-clang-fast++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /app/diffcomp/benchmark/xpdf-4.05/xpdf/pdfdetach.cc -o CMakeFiles/pdfdetach.dir/pdfdetach.cc.s

# Object files for target pdfdetach
pdfdetach_OBJECTS = \
"CMakeFiles/pdfdetach.dir/pdfdetach.cc.o"

# External object files for target pdfdetach
pdfdetach_EXTERNAL_OBJECTS = \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/AcroForm.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/Annot.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/Array.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/BuiltinFont.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/BuiltinFontTables.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/Catalog.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/CharCodeToUnicode.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/CMap.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/Decrypt.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/Dict.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/Error.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/FontEncodingTables.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/Function.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/Gfx.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/GfxFont.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/GfxState.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/GlobalParams.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/JArithmeticDecoder.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/JBIG2Stream.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/JPXStream.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/Lexer.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/Link.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/NameToCharCode.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/Object.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/OptionalContent.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/Outline.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/OutputDev.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/Page.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/Parser.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/PDF417Barcode.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/PDFDoc.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/PDFDocEncoding.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/PSTokenizer.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/SecurityHandler.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/Stream.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/TextString.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/UnicodeMap.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/UnicodeRemapping.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/UnicodeTypeTable.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/UTF8.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/XFAScanner.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/XRef.cc.o" \
"/app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/xpdf_objs.dir/Zoox.cc.o"

xpdf/pdfdetach: xpdf/CMakeFiles/pdfdetach.dir/pdfdetach.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/AcroForm.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/Annot.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/Array.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/BuiltinFont.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/BuiltinFontTables.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/Catalog.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/CharCodeToUnicode.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/CMap.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/Decrypt.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/Dict.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/Error.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/FontEncodingTables.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/Function.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/Gfx.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/GfxFont.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/GfxState.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/GlobalParams.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/JArithmeticDecoder.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/JBIG2Stream.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/JPXStream.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/Lexer.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/Link.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/NameToCharCode.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/Object.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/OptionalContent.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/Outline.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/OutputDev.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/Page.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/Parser.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/PDF417Barcode.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/PDFDoc.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/PDFDocEncoding.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/PSTokenizer.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/SecurityHandler.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/Stream.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/TextString.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/UnicodeMap.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/UnicodeRemapping.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/UnicodeTypeTable.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/UTF8.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/XFAScanner.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/XRef.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/xpdf_objs.dir/Zoox.cc.o
xpdf/pdfdetach: xpdf/CMakeFiles/pdfdetach.dir/build.make
xpdf/pdfdetach: goo/libgoo.a
xpdf/pdfdetach: fofi/libfofi.a
xpdf/pdfdetach: xpdf/CMakeFiles/pdfdetach.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/app/diffcomp/benchmark/xpdf-4.05/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pdfdetach"
	cd /app/diffcomp/benchmark/xpdf-4.05/build/xpdf && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pdfdetach.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
xpdf/CMakeFiles/pdfdetach.dir/build: xpdf/pdfdetach
.PHONY : xpdf/CMakeFiles/pdfdetach.dir/build

xpdf/CMakeFiles/pdfdetach.dir/clean:
	cd /app/diffcomp/benchmark/xpdf-4.05/build/xpdf && $(CMAKE_COMMAND) -P CMakeFiles/pdfdetach.dir/cmake_clean.cmake
.PHONY : xpdf/CMakeFiles/pdfdetach.dir/clean

xpdf/CMakeFiles/pdfdetach.dir/depend:
	cd /app/diffcomp/benchmark/xpdf-4.05/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /app/diffcomp/benchmark/xpdf-4.05 /app/diffcomp/benchmark/xpdf-4.05/xpdf /app/diffcomp/benchmark/xpdf-4.05/build /app/diffcomp/benchmark/xpdf-4.05/build/xpdf /app/diffcomp/benchmark/xpdf-4.05/build/xpdf/CMakeFiles/pdfdetach.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : xpdf/CMakeFiles/pdfdetach.dir/depend

