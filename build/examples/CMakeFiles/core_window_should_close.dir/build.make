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
include examples/CMakeFiles/core_window_should_close.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/CMakeFiles/core_window_should_close.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/core_window_should_close.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/core_window_should_close.dir/flags.make

examples/CMakeFiles/core_window_should_close.dir/core/core_window_should_close.c.o: examples/CMakeFiles/core_window_should_close.dir/flags.make
examples/CMakeFiles/core_window_should_close.dir/core/core_window_should_close.c.o: /Users/jeongjihyo/Documents/AnA_surninF/examples/core/core_window_should_close.c
examples/CMakeFiles/core_window_should_close.dir/core/core_window_should_close.c.o: examples/CMakeFiles/core_window_should_close.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jeongjihyo/Documents/AnA_surninF/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/CMakeFiles/core_window_should_close.dir/core/core_window_should_close.c.o"
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT examples/CMakeFiles/core_window_should_close.dir/core/core_window_should_close.c.o -MF CMakeFiles/core_window_should_close.dir/core/core_window_should_close.c.o.d -o CMakeFiles/core_window_should_close.dir/core/core_window_should_close.c.o -c /Users/jeongjihyo/Documents/AnA_surninF/examples/core/core_window_should_close.c

examples/CMakeFiles/core_window_should_close.dir/core/core_window_should_close.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/core_window_should_close.dir/core/core_window_should_close.c.i"
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jeongjihyo/Documents/AnA_surninF/examples/core/core_window_should_close.c > CMakeFiles/core_window_should_close.dir/core/core_window_should_close.c.i

examples/CMakeFiles/core_window_should_close.dir/core/core_window_should_close.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/core_window_should_close.dir/core/core_window_should_close.c.s"
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jeongjihyo/Documents/AnA_surninF/examples/core/core_window_should_close.c -o CMakeFiles/core_window_should_close.dir/core/core_window_should_close.c.s

# Object files for target core_window_should_close
core_window_should_close_OBJECTS = \
"CMakeFiles/core_window_should_close.dir/core/core_window_should_close.c.o"

# External object files for target core_window_should_close
core_window_should_close_EXTERNAL_OBJECTS =

examples/core_window_should_close: examples/CMakeFiles/core_window_should_close.dir/core/core_window_should_close.c.o
examples/core_window_should_close: examples/CMakeFiles/core_window_should_close.dir/build.make
examples/core_window_should_close: raylib/libraylib.a
examples/core_window_should_close: examples/CMakeFiles/core_window_should_close.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/jeongjihyo/Documents/AnA_surninF/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable core_window_should_close"
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/core_window_should_close.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/core_window_should_close.dir/build: examples/core_window_should_close
.PHONY : examples/CMakeFiles/core_window_should_close.dir/build

examples/CMakeFiles/core_window_should_close.dir/clean:
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/core_window_should_close.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/core_window_should_close.dir/clean

examples/CMakeFiles/core_window_should_close.dir/depend:
	cd /Users/jeongjihyo/Documents/AnA_surninF/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jeongjihyo/Documents/AnA_surninF /Users/jeongjihyo/Documents/AnA_surninF/examples /Users/jeongjihyo/Documents/AnA_surninF/build /Users/jeongjihyo/Documents/AnA_surninF/build/examples /Users/jeongjihyo/Documents/AnA_surninF/build/examples/CMakeFiles/core_window_should_close.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : examples/CMakeFiles/core_window_should_close.dir/depend

