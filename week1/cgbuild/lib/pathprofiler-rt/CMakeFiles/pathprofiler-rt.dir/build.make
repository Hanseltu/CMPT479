# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.11.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.11.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tuhaoxin/github/CMPT479/week1/path-profiler-template

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tuhaoxin/github/CMPT479/week1/cgbuild

# Include any dependencies generated for this target.
include lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/depend.make

# Include the progress variables for this target.
include lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/progress.make

# Include the compile flags for this target's objects.
include lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/flags.make

lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/runtime.cpp.o: lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/flags.make
lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/runtime.cpp.o: /Users/tuhaoxin/github/CMPT479/week1/path-profiler-template/lib/pathprofiler-rt/runtime.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tuhaoxin/github/CMPT479/week1/cgbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/runtime.cpp.o"
	cd /Users/tuhaoxin/github/CMPT479/week1/cgbuild/lib/pathprofiler-rt && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pathprofiler-rt.dir/runtime.cpp.o -c /Users/tuhaoxin/github/CMPT479/week1/path-profiler-template/lib/pathprofiler-rt/runtime.cpp

lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/runtime.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pathprofiler-rt.dir/runtime.cpp.i"
	cd /Users/tuhaoxin/github/CMPT479/week1/cgbuild/lib/pathprofiler-rt && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tuhaoxin/github/CMPT479/week1/path-profiler-template/lib/pathprofiler-rt/runtime.cpp > CMakeFiles/pathprofiler-rt.dir/runtime.cpp.i

lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/runtime.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pathprofiler-rt.dir/runtime.cpp.s"
	cd /Users/tuhaoxin/github/CMPT479/week1/cgbuild/lib/pathprofiler-rt && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tuhaoxin/github/CMPT479/week1/path-profiler-template/lib/pathprofiler-rt/runtime.cpp -o CMakeFiles/pathprofiler-rt.dir/runtime.cpp.s

# Object files for target pathprofiler-rt
pathprofiler__rt_OBJECTS = \
"CMakeFiles/pathprofiler-rt.dir/runtime.cpp.o"

# External object files for target pathprofiler-rt
pathprofiler__rt_EXTERNAL_OBJECTS =

lib/libpathprofiler-rt.a: lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/runtime.cpp.o
lib/libpathprofiler-rt.a: lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/build.make
lib/libpathprofiler-rt.a: lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tuhaoxin/github/CMPT479/week1/cgbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../libpathprofiler-rt.a"
	cd /Users/tuhaoxin/github/CMPT479/week1/cgbuild/lib/pathprofiler-rt && $(CMAKE_COMMAND) -P CMakeFiles/pathprofiler-rt.dir/cmake_clean_target.cmake
	cd /Users/tuhaoxin/github/CMPT479/week1/cgbuild/lib/pathprofiler-rt && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pathprofiler-rt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/build: lib/libpathprofiler-rt.a

.PHONY : lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/build

lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/clean:
	cd /Users/tuhaoxin/github/CMPT479/week1/cgbuild/lib/pathprofiler-rt && $(CMAKE_COMMAND) -P CMakeFiles/pathprofiler-rt.dir/cmake_clean.cmake
.PHONY : lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/clean

lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/depend:
	cd /Users/tuhaoxin/github/CMPT479/week1/cgbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tuhaoxin/github/CMPT479/week1/path-profiler-template /Users/tuhaoxin/github/CMPT479/week1/path-profiler-template/lib/pathprofiler-rt /Users/tuhaoxin/github/CMPT479/week1/cgbuild /Users/tuhaoxin/github/CMPT479/week1/cgbuild/lib/pathprofiler-rt /Users/tuhaoxin/github/CMPT479/week1/cgbuild/lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/pathprofiler-rt/CMakeFiles/pathprofiler-rt.dir/depend

