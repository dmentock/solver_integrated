# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /home/snkr/.local/lib/python3.10/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/snkr/.local/lib/python3.10/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/snkr/DAMASK

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/snkr/DAMASK

# Include any dependencies generated for this target.
include src/grid/test/CMakeFiles/test_discretization_grid.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/grid/test/CMakeFiles/test_discretization_grid.dir/compiler_depend.make

# Include the progress variables for this target.
include src/grid/test/CMakeFiles/test_discretization_grid.dir/progress.make

# Include the compile flags for this target's objects.
include src/grid/test/CMakeFiles/test_discretization_grid.dir/flags.make

src/grid/test/CMakeFiles/test_discretization_grid.dir/test_discretization_grid.cpp.o: src/grid/test/CMakeFiles/test_discretization_grid.dir/flags.make
src/grid/test/CMakeFiles/test_discretization_grid.dir/test_discretization_grid.cpp.o: src/grid/test/test_discretization_grid.cpp
src/grid/test/CMakeFiles/test_discretization_grid.dir/test_discretization_grid.cpp.o: src/grid/test/CMakeFiles/test_discretization_grid.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/snkr/DAMASK/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/grid/test/CMakeFiles/test_discretization_grid.dir/test_discretization_grid.cpp.o"
	cd /home/snkr/DAMASK/src/grid/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/grid/test/CMakeFiles/test_discretization_grid.dir/test_discretization_grid.cpp.o -MF CMakeFiles/test_discretization_grid.dir/test_discretization_grid.cpp.o.d -o CMakeFiles/test_discretization_grid.dir/test_discretization_grid.cpp.o -c /home/snkr/DAMASK/src/grid/test/test_discretization_grid.cpp

src/grid/test/CMakeFiles/test_discretization_grid.dir/test_discretization_grid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_discretization_grid.dir/test_discretization_grid.cpp.i"
	cd /home/snkr/DAMASK/src/grid/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/snkr/DAMASK/src/grid/test/test_discretization_grid.cpp > CMakeFiles/test_discretization_grid.dir/test_discretization_grid.cpp.i

src/grid/test/CMakeFiles/test_discretization_grid.dir/test_discretization_grid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_discretization_grid.dir/test_discretization_grid.cpp.s"
	cd /home/snkr/DAMASK/src/grid/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/snkr/DAMASK/src/grid/test/test_discretization_grid.cpp -o CMakeFiles/test_discretization_grid.dir/test_discretization_grid.cpp.s

# Object files for target test_discretization_grid
test_discretization_grid_OBJECTS = \
"CMakeFiles/test_discretization_grid.dir/test_discretization_grid.cpp.o"

# External object files for target test_discretization_grid
test_discretization_grid_EXTERNAL_OBJECTS =

src/grid/test/test_discretization_grid: src/grid/test/CMakeFiles/test_discretization_grid.dir/test_discretization_grid.cpp.o
src/grid/test/test_discretization_grid: src/grid/test/CMakeFiles/test_discretization_grid.dir/build.make
src/grid/test/test_discretization_grid: src/grid/libdiscretization_grid.a
src/grid/test/test_discretization_grid: /home/snkr/petsc/arch-linux-c-debug/lib/libpetsc.so
src/grid/test/test_discretization_grid: /usr/lib/x86_64-linux-gnu/libz.so
src/grid/test/test_discretization_grid: src/grid/libVTI.a
src/grid/test/test_discretization_grid: src/grid/libbase64.a
src/grid/test/test_discretization_grid: src/grid/libzlib.a
src/grid/test/test_discretization_grid: /home/snkr/petsc/arch-linux-c-debug/lib/libhdf5.so
src/grid/test/test_discretization_grid: /home/snkr/petsc/arch-linux-c-debug/lib/libz.so
src/grid/test/test_discretization_grid: /usr/lib/x86_64-linux-gnu/libdl.a
src/grid/test/test_discretization_grid: /usr/lib/x86_64-linux-gnu/libm.so
src/grid/test/test_discretization_grid: /home/snkr/petsc/arch-linux-c-debug/lib/libhdf5_fortran.so
src/grid/test/test_discretization_grid: /home/snkr/petsc/arch-linux-c-debug/lib/libhdf5.so
src/grid/test/test_discretization_grid: /home/snkr/petsc/arch-linux-c-debug/lib/libz.so
src/grid/test/test_discretization_grid: /usr/lib/x86_64-linux-gnu/libdl.a
src/grid/test/test_discretization_grid: /usr/lib/x86_64-linux-gnu/libm.so
src/grid/test/test_discretization_grid: /home/snkr/petsc/arch-linux-c-debug/lib/libhdf5_fortran.so
src/grid/test/test_discretization_grid: /usr/lib/x86_64-linux-gnu/libfyaml.so
src/grid/test/test_discretization_grid: /usr/lib/gcc/x86_64-linux-gnu/12/libgomp.so
src/grid/test/test_discretization_grid: /usr/lib/x86_64-linux-gnu/libpthread.a
src/grid/test/test_discretization_grid: /home/snkr/petsc/arch-linux-c-debug/lib/libmpi.so
src/grid/test/test_discretization_grid: /home/snkr/petsc/arch-linux-c-debug/lib/libmpicxx.so
src/grid/test/test_discretization_grid: /home/snkr/petsc/arch-linux-c-debug/lib/libfftw3_mpi.a
src/grid/test/test_discretization_grid: /home/snkr/petsc/arch-linux-c-debug/lib/libpetsc.so
src/grid/test/test_discretization_grid: /usr/lib/x86_64-linux-gnu/libgtest_main.a
src/grid/test/test_discretization_grid: /usr/lib/x86_64-linux-gnu/libgtest.a
src/grid/test/test_discretization_grid: src/grid/test/CMakeFiles/test_discretization_grid.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/snkr/DAMASK/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_discretization_grid"
	cd /home/snkr/DAMASK/src/grid/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_discretization_grid.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/grid/test/CMakeFiles/test_discretization_grid.dir/build: src/grid/test/test_discretization_grid
.PHONY : src/grid/test/CMakeFiles/test_discretization_grid.dir/build

src/grid/test/CMakeFiles/test_discretization_grid.dir/clean:
	cd /home/snkr/DAMASK/src/grid/test && $(CMAKE_COMMAND) -P CMakeFiles/test_discretization_grid.dir/cmake_clean.cmake
.PHONY : src/grid/test/CMakeFiles/test_discretization_grid.dir/clean

src/grid/test/CMakeFiles/test_discretization_grid.dir/depend:
	cd /home/snkr/DAMASK && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/snkr/DAMASK /home/snkr/DAMASK/src/grid/test /home/snkr/DAMASK /home/snkr/DAMASK/src/grid/test /home/snkr/DAMASK/src/grid/test/CMakeFiles/test_discretization_grid.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/grid/test/CMakeFiles/test_discretization_grid.dir/depend

