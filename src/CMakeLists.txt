file(GLOB damask-sources CONFIGURE_DEPENDS *.f90 *.c)

message(STATUS "Fortran compile flags: ${CMAKE_Fortran_FLAGS}")
message(STATUS "C++ compile flags: ${CMAKE_CXX_FLAGS}")



if(PROJECT_NAME STREQUAL "damask-grid")
    message("Making grid")
    set(executable-name "DAMASK_grid")
    # set(LDFLAGS "-Wl,--copy-dt-needed-entries")
    set(FFTW_LIBRARIES "$ENV{PETSC_DIR}/$ENV{PETSC_ARCH}/lib/libfftw3_mpi.a" "$ENV{PETSC_DIR}/$ENV{PETSC_ARCH}/lib/libfftw3.a")
    set(PETSC_ARCH_DIR $ENV{PETSC_DIR}/$ENV{PETSC_ARCH})
    include_directories($ENV{PETSC_DIR}/include
                        ${PETSC_ARCH_DIR}/include
                        ${EIGEN3_INCLUDE_DIR})

    # find_library(MPI_C_LIBRARIES NAMES mpi PATHS "${PETSC_ARCH_DIR}/lib" NO_DEFAULT_PATH)
    # find_library(MPI_CXX_LIBRARIES NAMES mpicxx PATHS "${PETSC_ARCH_DIR}/lib" NO_DEFAULT_PATH)

    set(LAPACK_LIBRARIES "${PETSC_ARCH_DIR}/lib/libflapack.a")
    set(BLAS_LIBRARIES "${PETSC_ARCH_DIR}/lib/libfblas.a") # Adjust the name if different
    message(STATUS "Using BLAS library: ${BLAS_LIBRARIES}")
    message(STATUS "Using LAPACK library: ${LAPACK_LIBRARIES}")
    
    # find_package(LAPACK REQUIRED)
    link_directories(${PETSC_ARCH_DIR}/lib)
    find_package(yaml-cpp REQUIRED)
    find_library(FYAML_LIBRARY NAMES fyaml)
    # file(GLOB solver-sources CONFIGURE_DEPENDS grid/*.cpp)
    find_package(OpenMP REQUIRED)
    set(HDF5_ROOT "${PETSC_ARCH_DIR}")
    find_package(HDF5 REQUIRED COMPONENTS C Fortran HL)
    find_package(ZLIB REQUIRED)
    find_package(Eigen3 REQUIRED)
    include_directories(${EIGEN3_INCLUDE_DIR}
                        grid)

    add_library(fortran_library OBJECT ${damask-sources} grid/base64.f90)
    # target_compile_options(fortran_library PRIVATE ${CMAKE_Fortran_FLAGS_${CMAKE_BUILD_TYPE}})
    target_link_libraries(fortran_library PUBLIC
                          ${LAPACK_LIBRARIES}
                          ${BLAS_LIBRARIES}
                          ${PETSC_ARCH_DIR}/lib/libpetsc.so
                          HDF5::HDF5
                          ${FYAML_LIBRARY}
                          OpenMP::OpenMP_CXX)
    message("CMAKE_Fortran_FLAGS_${CMAKE_BUILD_TYPE}: ${CMAKE_Fortran_FLAGS_${CMAKE_BUILD_TYPE}}")

    add_subdirectory(grid)
    add_executable(${executable-name} grid/main.cpp)
    target_link_libraries(${executable-name}
                          PUBLIC
                          fortran_library
                          damask_grid_lib)
    # set_target_properties(${executable-name} PROPERTIES
    #   RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin)
      install(TARGETS ${executable-name} RUNTIME DESTINATION bin)

else()
    if(PROJECT_NAME STREQUAL "damask-mesh")
        set(executable-name "DAMASK_mesh")
        file(GLOB solver-sources CONFIGURE_DEPENDS mesh/*.f90)
    elseif(PROJECT_NAME STREQUAL "damask-test")
        set(executable-name "DAMASK_test")
        file(GLOB solver-sources CONFIGURE_DEPENDS test/*.f90)
    endif()

    if(NOT CMAKE_BUILD_TYPE STREQUAL "SYNTAXONLY")

        add_executable(${executable-name} ${damask-sources} ${solver-sources})
        install(TARGETS ${executable-name} RUNTIME DESTINATION bin)
    else()
        add_library(${executable-name} OBJECT ${damask-sources} ${solver-sources})
        exec_program(mktemp OUTPUT_VARIABLE nothing)
        exec_program(mktemp ARGS -d OUTPUT_VARIABLE black_hole)
        install(PROGRAMS ${nothing} DESTINATION ${black_hole})
    endif()
endif()

string(REPLACE ";" "\n" sources "${damask-sources};${solver-sources}")
message(${CMAKE_BINARY_DIR})
file(WRITE ${CMAKE_BINARY_DIR}/sources.txt ${sources})