# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/tired_atlas/Desktop/SDLTEST/TESTTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tired_atlas/Desktop/SDLTEST/build-TESTTest-Desktop-Debug

# Include any dependencies generated for this target.
include CMakeFiles/TESTTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/TESTTest.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/TESTTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TESTTest.dir/flags.make

CMakeFiles/TESTTest.dir/main.cpp.o: CMakeFiles/TESTTest.dir/flags.make
CMakeFiles/TESTTest.dir/main.cpp.o: /home/tired_atlas/Desktop/SDLTEST/TESTTest/main.cpp
CMakeFiles/TESTTest.dir/main.cpp.o: CMakeFiles/TESTTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tired_atlas/Desktop/SDLTEST/build-TESTTest-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TESTTest.dir/main.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/TESTTest.dir/main.cpp.o -MF CMakeFiles/TESTTest.dir/main.cpp.o.d -o CMakeFiles/TESTTest.dir/main.cpp.o -c /home/tired_atlas/Desktop/SDLTEST/TESTTest/main.cpp

CMakeFiles/TESTTest.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TESTTest.dir/main.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tired_atlas/Desktop/SDLTEST/TESTTest/main.cpp > CMakeFiles/TESTTest.dir/main.cpp.i

CMakeFiles/TESTTest.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TESTTest.dir/main.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tired_atlas/Desktop/SDLTEST/TESTTest/main.cpp -o CMakeFiles/TESTTest.dir/main.cpp.s

# Object files for target TESTTest
TESTTest_OBJECTS = \
"CMakeFiles/TESTTest.dir/main.cpp.o"

# External object files for target TESTTest
TESTTest_EXTERNAL_OBJECTS =

TESTTest: CMakeFiles/TESTTest.dir/main.cpp.o
TESTTest: CMakeFiles/TESTTest.dir/build.make
TESTTest: CMakeFiles/TESTTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tired_atlas/Desktop/SDLTEST/build-TESTTest-Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TESTTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TESTTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TESTTest.dir/build: TESTTest
.PHONY : CMakeFiles/TESTTest.dir/build

CMakeFiles/TESTTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TESTTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TESTTest.dir/clean

CMakeFiles/TESTTest.dir/depend:
	cd /home/tired_atlas/Desktop/SDLTEST/build-TESTTest-Desktop-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tired_atlas/Desktop/SDLTEST/TESTTest /home/tired_atlas/Desktop/SDLTEST/TESTTest /home/tired_atlas/Desktop/SDLTEST/build-TESTTest-Desktop-Debug /home/tired_atlas/Desktop/SDLTEST/build-TESTTest-Desktop-Debug /home/tired_atlas/Desktop/SDLTEST/build-TESTTest-Desktop-Debug/CMakeFiles/TESTTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TESTTest.dir/depend
