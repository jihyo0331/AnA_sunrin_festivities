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
include examples/CMakeFiles/audio_sound_loading.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/CMakeFiles/audio_sound_loading.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/audio_sound_loading.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/audio_sound_loading.dir/flags.make

examples/CMakeFiles/audio_sound_loading.dir/audio/audio_sound_loading.c.o: examples/CMakeFiles/audio_sound_loading.dir/flags.make
examples/CMakeFiles/audio_sound_loading.dir/audio/audio_sound_loading.c.o: /Users/jeongjihyo/Documents/AnA_surninF/examples/audio/audio_sound_loading.c
examples/CMakeFiles/audio_sound_loading.dir/audio/audio_sound_loading.c.o: examples/CMakeFiles/audio_sound_loading.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jeongjihyo/Documents/AnA_surninF/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/CMakeFiles/audio_sound_loading.dir/audio/audio_sound_loading.c.o"
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT examples/CMakeFiles/audio_sound_loading.dir/audio/audio_sound_loading.c.o -MF CMakeFiles/audio_sound_loading.dir/audio/audio_sound_loading.c.o.d -o CMakeFiles/audio_sound_loading.dir/audio/audio_sound_loading.c.o -c /Users/jeongjihyo/Documents/AnA_surninF/examples/audio/audio_sound_loading.c

examples/CMakeFiles/audio_sound_loading.dir/audio/audio_sound_loading.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/audio_sound_loading.dir/audio/audio_sound_loading.c.i"
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jeongjihyo/Documents/AnA_surninF/examples/audio/audio_sound_loading.c > CMakeFiles/audio_sound_loading.dir/audio/audio_sound_loading.c.i

examples/CMakeFiles/audio_sound_loading.dir/audio/audio_sound_loading.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/audio_sound_loading.dir/audio/audio_sound_loading.c.s"
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jeongjihyo/Documents/AnA_surninF/examples/audio/audio_sound_loading.c -o CMakeFiles/audio_sound_loading.dir/audio/audio_sound_loading.c.s

# Object files for target audio_sound_loading
audio_sound_loading_OBJECTS = \
"CMakeFiles/audio_sound_loading.dir/audio/audio_sound_loading.c.o"

# External object files for target audio_sound_loading
audio_sound_loading_EXTERNAL_OBJECTS =

examples/audio_sound_loading: examples/CMakeFiles/audio_sound_loading.dir/audio/audio_sound_loading.c.o
examples/audio_sound_loading: examples/CMakeFiles/audio_sound_loading.dir/build.make
examples/audio_sound_loading: raylib/libraylib.a
examples/audio_sound_loading: examples/CMakeFiles/audio_sound_loading.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/jeongjihyo/Documents/AnA_surninF/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable audio_sound_loading"
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/audio_sound_loading.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/audio_sound_loading.dir/build: examples/audio_sound_loading
.PHONY : examples/CMakeFiles/audio_sound_loading.dir/build

examples/CMakeFiles/audio_sound_loading.dir/clean:
	cd /Users/jeongjihyo/Documents/AnA_surninF/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/audio_sound_loading.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/audio_sound_loading.dir/clean

examples/CMakeFiles/audio_sound_loading.dir/depend:
	cd /Users/jeongjihyo/Documents/AnA_surninF/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jeongjihyo/Documents/AnA_surninF /Users/jeongjihyo/Documents/AnA_surninF/examples /Users/jeongjihyo/Documents/AnA_surninF/build /Users/jeongjihyo/Documents/AnA_surninF/build/examples /Users/jeongjihyo/Documents/AnA_surninF/build/examples/CMakeFiles/audio_sound_loading.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : examples/CMakeFiles/audio_sound_loading.dir/depend

