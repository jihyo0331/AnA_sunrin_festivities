# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.0/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jeongjihyo/Documents/AnA_surninF

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jeongjihyo/Documents/AnA_surninF/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/text_raylib_fonts.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/CMakeFiles/text_raylib_fonts.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/text_raylib_fonts.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/text_raylib_fonts.dir/flags.make

examples/CMakeFiles/text_raylib_fonts.dir/text/text_raylib_fonts.c.o: examples/CMakeFiles/text_raylib_fonts.dir/flags.make
examples/CMakeFiles/text_raylib_fonts.dir/text/text_raylib_fonts.c.o: /Users/jeongjihyo/Documents/AnA_surninF/examples/text/text_raylib_fonts.c
examples/CMakeFiles/text_raylib_fonts.dir/text/text_raylib_fonts.c.o: examples/CMakeFiles/text_raylib_fonts.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jeongjihyo/Documents/AnA_surninF/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/CMakeFiles/text_raylib_fonts.dir/text/text_raylib_fonts.c.o"
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT examples/CMakeFiles/text_raylib_fonts.dir/text/text_raylib_fonts.c.o -MF CMakeFiles/text_raylib_fonts.dir/text/text_raylib_fonts.c.o.d -o CMakeFiles/text_raylib_fonts.dir/text/text_raylib_fonts.c.o -c /Users/jeongjihyo/Documents/AnA_surninF/examples/text/text_raylib_fonts.c

examples/CMakeFiles/text_raylib_fonts.dir/text/text_raylib_fonts.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/text_raylib_fonts.dir/text/text_raylib_fonts.c.i"
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jeongjihyo/Documents/AnA_surninF/examples/text/text_raylib_fonts.c > CMakeFiles/text_raylib_fonts.dir/text/text_raylib_fonts.c.i

examples/CMakeFiles/text_raylib_fonts.dir/text/text_raylib_fonts.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/text_raylib_fonts.dir/text/text_raylib_fonts.c.s"
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jeongjihyo/Documents/AnA_surninF/examples/text/text_raylib_fonts.c -o CMakeFiles/text_raylib_fonts.dir/text/text_raylib_fonts.c.s

# Object files for target text_raylib_fonts
text_raylib_fonts_OBJECTS = \
"CMakeFiles/text_raylib_fonts.dir/text/text_raylib_fonts.c.o"

# External object files for target text_raylib_fonts
text_raylib_fonts_EXTERNAL_OBJECTS =

examples/text_raylib_fonts: examples/CMakeFiles/text_raylib_fonts.dir/text/text_raylib_fonts.c.o
examples/text_raylib_fonts: examples/CMakeFiles/text_raylib_fonts.dir/build.make
examples/text_raylib_fonts: raylib/libraylib.a
examples/text_raylib_fonts: examples/CMakeFiles/text_raylib_fonts.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/jeongjihyo/Documents/AnA_surninF/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable text_raylib_fonts"
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/text_raylib_fonts.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/text_raylib_fonts.dir/build: examples/text_raylib_fonts
.PHONY : examples/CMakeFiles/text_raylib_fonts.dir/build

examples/CMakeFiles/text_raylib_fonts.dir/clean:
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/text_raylib_fonts.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/text_raylib_fonts.dir/clean

examples/CMakeFiles/text_raylib_fonts.dir/depend:
	cd /Users/jeongjihyo/Documents/AnA_surninF/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jeongjihyo/Documents/AnA_surninF /Users/jeongjihyo/Documents/AnA_surninF/examples /Users/jeongjihyo/Documents/AnA_surninF/build /Users/jeongjihyo/Documents/AnA_surninF/build/examples /Users/jeongjihyo/Documents/AnA_surninF/build/examples/CMakeFiles/text_raylib_fonts.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : examples/CMakeFiles/text_raylib_fonts.dir/depend

