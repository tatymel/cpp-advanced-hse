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
include tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/compiler_depend.make

# Include the progress variables for this target.
include tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/progress.make

# Include the compile flags for this target's objects.
include tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/flags.make

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_tokenizer.cpp.o: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/flags.make
tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_tokenizer.cpp.o: /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_tokenizer.cpp
tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_tokenizer.cpp.o: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_tokenizer.cpp.o"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_tokenizer.cpp.o -MF CMakeFiles/test_scheme_basic.dir/tests/test_tokenizer.cpp.o.d -o CMakeFiles/test_scheme_basic.dir/tests/test_tokenizer.cpp.o -c /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_tokenizer.cpp

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_tokenizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_basic.dir/tests/test_tokenizer.cpp.i"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_tokenizer.cpp > CMakeFiles/test_scheme_basic.dir/tests/test_tokenizer.cpp.i

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_tokenizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_basic.dir/tests/test_tokenizer.cpp.s"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_tokenizer.cpp -o CMakeFiles/test_scheme_basic.dir/tests/test_tokenizer.cpp.s

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_parser.cpp.o: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/flags.make
tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_parser.cpp.o: /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_parser.cpp
tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_parser.cpp.o: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_parser.cpp.o"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_parser.cpp.o -MF CMakeFiles/test_scheme_basic.dir/tests/test_parser.cpp.o.d -o CMakeFiles/test_scheme_basic.dir/tests/test_parser.cpp.o -c /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_parser.cpp

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_basic.dir/tests/test_parser.cpp.i"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_parser.cpp > CMakeFiles/test_scheme_basic.dir/tests/test_parser.cpp.i

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_basic.dir/tests/test_parser.cpp.s"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_parser.cpp -o CMakeFiles/test_scheme_basic.dir/tests/test_parser.cpp.s

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_boolean.cpp.o: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/flags.make
tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_boolean.cpp.o: /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_boolean.cpp
tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_boolean.cpp.o: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_boolean.cpp.o"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_boolean.cpp.o -MF CMakeFiles/test_scheme_basic.dir/tests/test_boolean.cpp.o.d -o CMakeFiles/test_scheme_basic.dir/tests/test_boolean.cpp.o -c /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_boolean.cpp

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_boolean.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_basic.dir/tests/test_boolean.cpp.i"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_boolean.cpp > CMakeFiles/test_scheme_basic.dir/tests/test_boolean.cpp.i

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_boolean.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_basic.dir/tests/test_boolean.cpp.s"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_boolean.cpp -o CMakeFiles/test_scheme_basic.dir/tests/test_boolean.cpp.s

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_eval.cpp.o: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/flags.make
tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_eval.cpp.o: /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_eval.cpp
tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_eval.cpp.o: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_eval.cpp.o"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_eval.cpp.o -MF CMakeFiles/test_scheme_basic.dir/tests/test_eval.cpp.o.d -o CMakeFiles/test_scheme_basic.dir/tests/test_eval.cpp.o -c /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_eval.cpp

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_eval.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_basic.dir/tests/test_eval.cpp.i"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_eval.cpp > CMakeFiles/test_scheme_basic.dir/tests/test_eval.cpp.i

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_eval.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_basic.dir/tests/test_eval.cpp.s"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_eval.cpp -o CMakeFiles/test_scheme_basic.dir/tests/test_eval.cpp.s

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_integer.cpp.o: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/flags.make
tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_integer.cpp.o: /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_integer.cpp
tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_integer.cpp.o: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_integer.cpp.o"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_integer.cpp.o -MF CMakeFiles/test_scheme_basic.dir/tests/test_integer.cpp.o.d -o CMakeFiles/test_scheme_basic.dir/tests/test_integer.cpp.o -c /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_integer.cpp

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_integer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_basic.dir/tests/test_integer.cpp.i"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_integer.cpp > CMakeFiles/test_scheme_basic.dir/tests/test_integer.cpp.i

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_integer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_basic.dir/tests/test_integer.cpp.s"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_integer.cpp -o CMakeFiles/test_scheme_basic.dir/tests/test_integer.cpp.s

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_list.cpp.o: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/flags.make
tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_list.cpp.o: /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_list.cpp
tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_list.cpp.o: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_list.cpp.o"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_list.cpp.o -MF CMakeFiles/test_scheme_basic.dir/tests/test_list.cpp.o.d -o CMakeFiles/test_scheme_basic.dir/tests/test_list.cpp.o -c /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_list.cpp

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_list.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_basic.dir/tests/test_list.cpp.i"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_list.cpp > CMakeFiles/test_scheme_basic.dir/tests/test_list.cpp.i

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_list.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_basic.dir/tests/test_list.cpp.s"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_list.cpp -o CMakeFiles/test_scheme_basic.dir/tests/test_list.cpp.s

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_fuzzing_2.cpp.o: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/flags.make
tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_fuzzing_2.cpp.o: /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_fuzzing_2.cpp
tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_fuzzing_2.cpp.o: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_fuzzing_2.cpp.o"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_fuzzing_2.cpp.o -MF CMakeFiles/test_scheme_basic.dir/tests/test_fuzzing_2.cpp.o.d -o CMakeFiles/test_scheme_basic.dir/tests/test_fuzzing_2.cpp.o -c /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_fuzzing_2.cpp

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_fuzzing_2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_scheme_basic.dir/tests/test_fuzzing_2.cpp.i"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_fuzzing_2.cpp > CMakeFiles/test_scheme_basic.dir/tests/test_fuzzing_2.cpp.i

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_fuzzing_2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_scheme_basic.dir/tests/test_fuzzing_2.cpp.s"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic/tests/test_fuzzing_2.cpp -o CMakeFiles/test_scheme_basic.dir/tests/test_fuzzing_2.cpp.s

# Object files for target test_scheme_basic
test_scheme_basic_OBJECTS = \
"CMakeFiles/test_scheme_basic.dir/tests/test_tokenizer.cpp.o" \
"CMakeFiles/test_scheme_basic.dir/tests/test_parser.cpp.o" \
"CMakeFiles/test_scheme_basic.dir/tests/test_boolean.cpp.o" \
"CMakeFiles/test_scheme_basic.dir/tests/test_eval.cpp.o" \
"CMakeFiles/test_scheme_basic.dir/tests/test_integer.cpp.o" \
"CMakeFiles/test_scheme_basic.dir/tests/test_list.cpp.o" \
"CMakeFiles/test_scheme_basic.dir/tests/test_fuzzing_2.cpp.o"

# External object files for target test_scheme_basic
test_scheme_basic_EXTERNAL_OBJECTS =

test_scheme_basic: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_tokenizer.cpp.o
test_scheme_basic: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_parser.cpp.o
test_scheme_basic: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_boolean.cpp.o
test_scheme_basic: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_eval.cpp.o
test_scheme_basic: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_integer.cpp.o
test_scheme_basic: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_list.cpp.o
test_scheme_basic: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/tests/test_fuzzing_2.cpp.o
test_scheme_basic: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/build.make
test_scheme_basic: libcontrib_catch_main.a
test_scheme_basic: tasks/scheme/basic/libscheme_basic.a
test_scheme_basic: tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable ../../../test_scheme_basic"
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_scheme_basic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/build: test_scheme_basic
.PHONY : tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/build

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/clean:
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic && $(CMAKE_COMMAND) -P CMakeFiles/test_scheme_basic.dir/cmake_clean.cmake
.PHONY : tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/clean

tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/depend:
	cd /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tmelnik/Desktop/infer/cpp-advanced-hse /Users/tmelnik/Desktop/infer/cpp-advanced-hse/tasks/scheme/basic /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic /Users/tmelnik/Desktop/infer/cpp-advanced-hse/build/tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tasks/scheme/basic/CMakeFiles/test_scheme_basic.dir/depend

