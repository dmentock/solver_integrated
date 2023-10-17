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
CMAKE_SOURCE_DIR = /home/snkr/solver_integrated

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/snkr/solver_integrated

# Include any dependencies generated for this target.
include src/grid/CMakeFiles/spectral.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/grid/CMakeFiles/spectral.dir/compiler_depend.make

# Include the progress variables for this target.
include src/grid/CMakeFiles/spectral.dir/progress.make

# Include the compile flags for this target's objects.
include src/grid/CMakeFiles/spectral.dir/flags.make

src/grid/CMakeFiles/spectral.dir/spectral.cpp.o: src/grid/CMakeFiles/spectral.dir/flags.make
src/grid/CMakeFiles/spectral.dir/spectral.cpp.o: src/grid/spectral.cpp
src/grid/CMakeFiles/spectral.dir/spectral.cpp.o: src/grid/CMakeFiles/spectral.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/snkr/solver_integrated/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/grid/CMakeFiles/spectral.dir/spectral.cpp.o"
	cd /home/snkr/solver_integrated/src/grid && /opt/intel/oneapi/mpi/2021.10.0/bin/mpiicpc $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/grid/CMakeFiles/spectral.dir/spectral.cpp.o -MF CMakeFiles/spectral.dir/spectral.cpp.o.d -o CMakeFiles/spectral.dir/spectral.cpp.o -c /home/snkr/solver_integrated/src/grid/spectral.cpp

src/grid/CMakeFiles/spectral.dir/spectral.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spectral.dir/spectral.cpp.i"
	cd /home/snkr/solver_integrated/src/grid && /opt/intel/oneapi/mpi/2021.10.0/bin/mpiicpc $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/snkr/solver_integrated/src/grid/spectral.cpp > CMakeFiles/spectral.dir/spectral.cpp.i

src/grid/CMakeFiles/spectral.dir/spectral.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spectral.dir/spectral.cpp.s"
	cd /home/snkr/solver_integrated/src/grid && /opt/intel/oneapi/mpi/2021.10.0/bin/mpiicpc $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/snkr/solver_integrated/src/grid/spectral.cpp -o CMakeFiles/spectral.dir/spectral.cpp.s

# Object files for target spectral
spectral_OBJECTS = \
"CMakeFiles/spectral.dir/spectral.cpp.o"

# External object files for target spectral
spectral_EXTERNAL_OBJECTS =

src/grid/libspectral.a: src/grid/CMakeFiles/spectral.dir/spectral.cpp.o
src/grid/libspectral.a: src/grid/CMakeFiles/spectral.dir/build.make
src/grid/libspectral.a: src/grid/CMakeFiles/spectral.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/snkr/solver_integrated/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libspectral.a"
	cd /home/snkr/solver_integrated/src/grid && $(CMAKE_COMMAND) -P CMakeFiles/spectral.dir/cmake_clean_target.cmake
	cd /home/snkr/solver_integrated/src/grid && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/spectral.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/grid/CMakeFiles/spectral.dir/build: src/grid/libspectral.a
.PHONY : src/grid/CMakeFiles/spectral.dir/build

src/grid/CMakeFiles/spectral.dir/clean:
	cd /home/snkr/solver_integrated/src/grid && $(CMAKE_COMMAND) -P CMakeFiles/spectral.dir/cmake_clean.cmake
.PHONY : src/grid/CMakeFiles/spectral.dir/clean

src/grid/CMakeFiles/spectral.dir/depend:
	cd /home/snkr/solver_integrated && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/snkr/solver_integrated /home/snkr/solver_integrated/src/grid /home/snkr/solver_integrated /home/snkr/solver_integrated/src/grid /home/snkr/solver_integrated/src/grid/CMakeFiles/spectral.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/grid/CMakeFiles/spectral.dir/depend
