# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tmelnik/Desktop/infer/cpp-advanced-hse

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build

# Include any dependencies generated for this target.
include tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/flags.make

tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/run.cpp.o: tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/flags.make
tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/run.cpp.o: /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/lock-free/rw-spinlock/run.cpp
tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/run.cpp.o: tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/run.cpp.o"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/lock-free/rw-spinlock && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/run.cpp.o -MF CMakeFiles/bench_rw_spinlock.dir/run.cpp.o.d -o CMakeFiles/bench_rw_spinlock.dir/run.cpp.o -c /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/lock-free/rw-spinlock/run.cpp

tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/run.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bench_rw_spinlock.dir/run.cpp.i"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/lock-free/rw-spinlock && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/lock-free/rw-spinlock/run.cpp > CMakeFiles/bench_rw_spinlock.dir/run.cpp.i

tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/run.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bench_rw_spinlock.dir/run.cpp.s"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/lock-free/rw-spinlock && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/lock-free/rw-spinlock/run.cpp -o CMakeFiles/bench_rw_spinlock.dir/run.cpp.s

# Object files for target bench_rw_spinlock
bench_rw_spinlock_OBJECTS = \
"CMakeFiles/bench_rw_spinlock.dir/run.cpp.o"

# External object files for target bench_rw_spinlock
bench_rw_spinlock_EXTERNAL_OBJECTS =

bench_rw_spinlock: tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/run.cpp.o
bench_rw_spinlock: tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/build.make
bench_rw_spinlock: libbenchmark.a
bench_rw_spinlock: tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bench_rw_spinlock"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/lock-free/rw-spinlock && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bench_rw_spinlock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/build: bench_rw_spinlock
.PHONY : tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/build

tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/clean:
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/lock-free/rw-spinlock && $(CMAKE_COMMAND) -P CMakeFiles/bench_rw_spinlock.dir/cmake_clean.cmake
.PHONY : tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/clean

tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/depend:
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tmelnik/Desktop/infer/cpp-advanced-hse /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/lock-free/rw-spinlock /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/lock-free/rw-spinlock /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/lock-free/rw-spinlock/CMakeFiles/bench_rw_spinlock.dir/depend

