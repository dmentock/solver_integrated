project(grid)
cmake_minimum_required(VERSION 3.10)

 # TODO: switch entirely to yaml-cpp

# set(HDF5_ROOT "${PETSC_ARCH_DIR}")

# find_package(HDF5 REQUIRED COMPONENTS C Fortran)
# message("FortranFortranFortrantranFortntranFortntranFortntranFortntranFortntranFortntranFortntranFortntranFortran\n${ZLIB_LIBRARIES}")
include_directories(${CMAKE_Fortran_MODULE_DIRECTORY})

add_library(base64 base64.f90)
target_link_libraries(base64 PUBLIC fortran_library)

add_library(zlib zlib.f90)
target_link_libraries(zlib PUBLIC fortran_library -lz)

add_library(VTI VTI.f90)
target_link_libraries(VTI 
                      PUBLIC
                      fortran_library
                      base64
                      zlib)

add_library(discretization_grid discretization_grid.cpp)
target_link_libraries(discretization_grid 
                      PUBLIC
                      fortran_library
                      VTI
                      ${MPI_C_LIBRARIES}
                      ${MPI_CXX_LIBRARIES}
                      ${PETSC_ARCH_DIR}/lib/libfftw3_mpi.a
                      ${PETSC_ARCH_DIR}/lib/libpetsc.so
                      -lfftw3)

add_library(fft fft.cpp)
target_link_libraries(fft 
                      ${PETSC_ARCH_DIR}/lib/libfftw3_mpi.a
                      # ${PETSC_ARCH_DIR}/lib/libmpi.a
                      ${PETSC_ARCH_DIR}/lib/libpetsc.so
                      -lmpi
                      -lfftw3)

add_library(spectral spectral.cpp)
target_link_libraries(spectral
                      PUBLIC
                      fortran_library
                      fft
                      ${PETSC_ARCH_DIR}/lib/libpetsc.so)

add_library(config_c config.cpp)
target_link_libraries(config_c yaml-cpp)

add_library(mech_base mech_base.cpp)
target_link_libraries(mech_base
                      PUBLIC
                      fortran_library
                      spectral
                      discretization_grid
                      config_c
                      ${PETSC_ARCH_DIR}/lib/libpetsc.so
                      ${PETSC_ARCH_DIR}/lib/libfftw3_mpi.a
                      -lfftw3)

add_library(mech_solver_basic mech_solver_basic.cpp)
target_link_libraries(mech_solver_basic 
                      PUBLIC
                      mech_base)

add_library(damask_grid_lib damask_grid.cpp)
target_link_libraries(damask_grid_lib 
                      PUBLIC
                      fft
                      fortran_library
                      spectral
                      discretization_grid
                      config_c
                      mech_base
                      mech_solver_basic
                      # ${PETSC_ARCH_DIR}/lib/libmpi.a
                      ${PETSC_ARCH_DIR}/lib/libpetsc.so
                      ${PETSC_ARCH_DIR}/lib/libfftw3_mpi.a
                      # ${PETSC_ARCH_DIR}/lib/libfftw3.a
                      -lfftw3
                      -llapack
                      OpenMP::OpenMP_CXX)


add_subdirectory(test)
