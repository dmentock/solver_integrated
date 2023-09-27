file(GLOB damask-sources CONFIGURE_DEPENDS *.f90 *.c)

if(PROJECT_NAME STREQUAL "damask-grid")
    message("Making grid")
    set(CMAKE_CXX_FLAGS_DEBUG "-g -O0")
    set(CMAKE_C_FLAGS_DEBUG "-g -O0")
    set(CMAKE_BUILD_TYPE Debug)

    set(CMAKE_Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR}/mod_files)

    set(executable-name "DAMASK_grid")
    # set(LDFLAGS "-Wl,--copy-dt-needed-entries")
    set(FFTW_LIBRARIES "$ENV{PETSC_DIR}/$ENV{PETSC_ARCH}/lib/libfftw3_mpi.a" "$ENV{PETSC_DIR}/$ENV{PETSC_ARCH}/lib/libfftw3.a")
    set(PETSC_ARCH_DIR $ENV{PETSC_DIR}/$ENV{PETSC_ARCH})
    include_directories($ENV{PETSC_DIR}/include
                        ${PETSC_ARCH_DIR}/include
                        ${EIGEN3_INCLUDE_DIR})

    find_library(MPI_C_LIBRARIES NAMES mpi PATHS "${PETSC_ARCH_DIR}/lib" NO_DEFAULT_PATH)
    find_library(MPI_CXX_LIBRARIES NAMES mpicxx PATHS "${PETSC_ARCH_DIR}/lib" NO_DEFAULT_PATH)

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

    add_library(fortran_library OBJECT ${damask-sources})
    target_link_libraries(fortran_library PUBLIC
                          ${PETSC_ARCH_DIR}/lib/libpetsc.so
                          # ${PETSC_ARCH_DIR}/lib/libfftw3_mpi.a
                          # ${PETSC_ARCH_DIR}/lib/libmpi.a
                          HDF5::HDF5
                          ${FYAML_LIBRARY}
                          -llapack
                          OpenMP::OpenMP_CXX)
                    
    add_subdirectory(grid)
    add_executable(${executable-name} ${damask-sources} grid/main.cpp)
    target_link_libraries(${executable-name}
                          PUBLIC
                          damask_grid_lib)
    set_target_properties(${executable-name} PROPERTIES
      RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
    message(${CMAKE_BINARY_DIR} "${CMAKE_BINARY_DIR}")  
    install(TARGETS ${executable-name} RUNTIME DESTINATION bin)

    # 
    # add_library(fortran_library STATIC ${damask-sources})
    # # target_link_libraries(fortran_library PUBLIC -lz)
    # add_subdirectory(grid)
    # install(TARGETS damask_grid RUNTIME DESTINATION bin)
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