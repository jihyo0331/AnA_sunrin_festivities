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
include examples/CMakeFiles/models_waving_cubes.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/CMakeFiles/models_waving_cubes.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/models_waving_cubes.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/models_waving_cubes.dir/flags.make

examples/CMakeFiles/models_waving_cubes.dir/models/models_waving_cubes.c.o: examples/CMakeFiles/models_waving_cubes.dir/flags.make
examples/CMakeFiles/models_waving_cubes.dir/models/models_waving_cubes.c.o: /Users/jeongjihyo/Documents/AnA_surninF/examples/models/models_waving_cubes.c
examples/CMakeFiles/models_waving_cubes.dir/models/models_waving_cubes.c.o: examples/CMakeFiles/models_waving_cubes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jeongjihyo/Documents/AnA_surninF/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/CMakeFiles/models_waving_cubes.dir/models/models_waving_cubes.c.o"
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT examples/CMakeFiles/models_waving_cubes.dir/models/models_waving_cubes.c.o -MF CMakeFiles/models_waving_cubes.dir/models/models_waving_cubes.c.o.d -o CMakeFiles/models_waving_cubes.dir/models/models_waving_cubes.c.o -c /Users/jeongjihyo/Documents/AnA_surninF/examples/models/models_waving_cubes.c

examples/CMakeFiles/models_waving_cubes.dir/models/models_waving_cubes.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/models_waving_cubes.dir/models/models_waving_cubes.c.i"
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jeongjihyo/Documents/AnA_surninF/examples/models/models_waving_cubes.c > CMakeFiles/models_waving_cubes.dir/models/models_waving_cubes.c.i

examples/CMakeFiles/models_waving_cubes.dir/models/models_waving_cubes.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/models_waving_cubes.dir/models/models_waving_cubes.c.s"
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jeongjihyo/Documents/AnA_surninF/examples/models/models_waving_cubes.c -o CMakeFiles/models_waving_cubes.dir/models/models_waving_cubes.c.s

# Object files for target models_waving_cubes
models_waving_cubes_OBJECTS = \
"CMakeFiles/models_waving_cubes.dir/models/models_waving_cubes.c.o"

# External object files for target models_waving_cubes
models_waving_cubes_EXTERNAL_OBJECTS =

examples/models_waving_cubes: examples/CMakeFiles/models_waving_cubes.dir/models/models_waving_cubes.c.o
examples/models_waving_cubes: examples/CMakeFiles/models_waving_cubes.dir/build.make
examples/models_waving_cubes: raylib/libraylib.a
examples/models_waving_cubes: examples/CMakeFiles/models_waving_cubes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/jeongjihyo/Documents/AnA_surninF/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable models_waving_cubes"
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/models_waving_cubes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/models_waving_cubes.dir/build: examples/models_waving_cubes
.PHONY : examples/CMakeFiles/models_waving_cubes.dir/build

examples/CMakeFiles/models_waving_cubes.dir/clean:
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/models_waving_cubes.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/models_waving_cubes.dir/clean

examples/CMakeFiles/models_waving_cubes.dir/depend:
	cd /Users/jeongjihyo/Documents/AnA_surninF/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jeongjihyo/Documents/AnA_surninF /Users/jeongjihyo/Documents/AnA_surninF/examples /Users/jeongjihyo/Documents/AnA_surninF/build /Users/jeongjihyo/Documents/AnA_surninF/build/examples /Users/jeongjihyo/Documents/AnA_surninF/build/examples/CMakeFiles/models_waving_cubes.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : examples/CMakeFiles/models_waving_cubes.dir/depend

