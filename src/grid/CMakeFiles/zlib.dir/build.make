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
include src/grid/CMakeFiles/zlib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/grid/CMakeFiles/zlib.dir/compiler_depend.make

# Include the progress variables for this target.
include src/grid/CMakeFiles/zlib.dir/progress.make

# Include the compile flags for this target's objects.
include src/grid/CMakeFiles/zlib.dir/flags.make

src/grid/CMakeFiles/zlib.dir/zlib.f90.o: src/grid/CMakeFiles/zlib.dir/flags.make
src/grid/CMakeFiles/zlib.dir/zlib.f90.o: src/grid/zlib.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/snkr/solver_integrated/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object src/grid/CMakeFiles/zlib.dir/zlib.f90.o"
	cd /home/snkr/solver_integrated/src/grid && /opt/intel/oneapi/mpi/2021.10.0/bin/mpiifort $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/snkr/solver_integrated/src/grid/zlib.f90 -o CMakeFiles/zlib.dir/zlib.f90.o

src/grid/CMakeFiles/zlib.dir/zlib.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/zlib.dir/zlib.f90.i"
	cd /home/snkr/solver_integrated/src/grid && /opt/intel/oneapi/mpi/2021.10.0/bin/mpiifort $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/snkr/solver_integrated/src/grid/zlib.f90 > CMakeFiles/zlib.dir/zlib.f90.i

src/grid/CMakeFiles/zlib.dir/zlib.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/zlib.dir/zlib.f90.s"
	cd /home/snkr/solver_integrated/src/grid && /opt/intel/oneapi/mpi/2021.10.0/bin/mpiifort $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/snkr/solver_integrated/src/grid/zlib.f90 -o CMakeFiles/zlib.dir/zlib.f90.s

# Object files for target zlib
zlib_OBJECTS = \
"CMakeFiles/zlib.dir/zlib.f90.o"

# External object files for target zlib
zlib_EXTERNAL_OBJECTS = \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/CLI.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/C_routines.c.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/HDF5_utilities.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/IO.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/LAPACK_interface.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/YAML_parse.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/YAML_types.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/config.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/constants.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/crystal.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/discretization.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/geometry_plastic_nonlocal.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/homogenization.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/homogenization_damage.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/homogenization_damage_pass.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/homogenization_mechanical.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/homogenization_mechanical_RGC.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/homogenization_mechanical_isostrain.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/homogenization_mechanical_pass.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/homogenization_thermal.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/homogenization_thermal_isotemperature.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/homogenization_thermal_pass.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/material.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/materialpoint.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/math.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/misc.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/parallelization.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase_damage.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase_damage_anisobrittle.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase_damage_isobrittle.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase_mechanical.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase_mechanical_eigen.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase_mechanical_eigen_thermalexpansion.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase_mechanical_elastic.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase_mechanical_plastic.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase_mechanical_plastic_dislotungsten.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase_mechanical_plastic_dislotwin.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase_mechanical_plastic_isotropic.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase_mechanical_plastic_kinehardening.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase_mechanical_plastic_none.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase_mechanical_plastic_nonlocal.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase_mechanical_plastic_phenopowerlaw.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase_thermal.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase_thermal_source_dissipation.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/phase_thermal_source_externalheat.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/polynomials.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/prec.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/quit.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/result.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/rotations.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/signal.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/system_routines.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/tables.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/tensor_printer.f90.o" \
"/home/snkr/solver_integrated/src/CMakeFiles/fortran_library.dir/grid/base64.f90.o"

src/grid/libzlib.a: src/grid/CMakeFiles/zlib.dir/zlib.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/CLI.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/C_routines.c.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/HDF5_utilities.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/IO.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/LAPACK_interface.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/YAML_parse.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/YAML_types.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/config.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/constants.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/crystal.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/discretization.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/geometry_plastic_nonlocal.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/homogenization.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/homogenization_damage.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/homogenization_damage_pass.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/homogenization_mechanical.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/homogenization_mechanical_RGC.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/homogenization_mechanical_isostrain.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/homogenization_mechanical_pass.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/homogenization_thermal.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/homogenization_thermal_isotemperature.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/homogenization_thermal_pass.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/material.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/materialpoint.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/math.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/misc.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/parallelization.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase_damage.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase_damage_anisobrittle.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase_damage_isobrittle.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase_mechanical.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase_mechanical_eigen.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase_mechanical_eigen_thermalexpansion.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase_mechanical_elastic.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase_mechanical_plastic.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase_mechanical_plastic_dislotungsten.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase_mechanical_plastic_dislotwin.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase_mechanical_plastic_isotropic.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase_mechanical_plastic_kinehardening.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase_mechanical_plastic_none.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase_mechanical_plastic_nonlocal.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase_mechanical_plastic_phenopowerlaw.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase_thermal.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase_thermal_source_dissipation.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/phase_thermal_source_externalheat.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/polynomials.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/prec.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/quit.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/result.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/rotations.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/signal.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/system_routines.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/tables.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/tensor_printer.f90.o
src/grid/libzlib.a: src/CMakeFiles/fortran_library.dir/grid/base64.f90.o
src/grid/libzlib.a: src/grid/CMakeFiles/zlib.dir/build.make
src/grid/libzlib.a: src/grid/CMakeFiles/zlib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/snkr/solver_integrated/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking Fortran static library libzlib.a"
	cd /home/snkr/solver_integrated/src/grid && $(CMAKE_COMMAND) -P CMakeFiles/zlib.dir/cmake_clean_target.cmake
	cd /home/snkr/solver_integrated/src/grid && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/zlib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/grid/CMakeFiles/zlib.dir/build: src/grid/libzlib.a
.PHONY : src/grid/CMakeFiles/zlib.dir/build

src/grid/CMakeFiles/zlib.dir/clean:
	cd /home/snkr/solver_integrated/src/grid && $(CMAKE_COMMAND) -P CMakeFiles/zlib.dir/cmake_clean.cmake
.PHONY : src/grid/CMakeFiles/zlib.dir/clean

src/grid/CMakeFiles/zlib.dir/depend:
	cd /home/snkr/solver_integrated && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/snkr/solver_integrated /home/snkr/solver_integrated/src/grid /home/snkr/solver_integrated /home/snkr/solver_integrated/src/grid /home/snkr/solver_integrated/src/grid/CMakeFiles/zlib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/grid/CMakeFiles/zlib.dir/depend

