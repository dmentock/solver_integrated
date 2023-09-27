# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# compile C with /home/snkr/petsc/arch-linux-c-debug/bin/mpicc
# compile CXX with /usr/bin/c++
# compile Fortran with /home/snkr/petsc/arch-linux-c-debug/bin/mpif90
C_DEFINES = -DCMAKE_SYSTEM=\"Linux-5.10.16.3-microsoft-standard-WSL2\" -DDAMASKVERSION=\"3.0.0-alpha7-784-g69239661c\" -DFYAML -DPETSC -Dgrid

C_INCLUDES = -I/home/snkr/petsc/include -I/usr/include/eigen3 -I/home/snkr/DAMASK/src/grid -I/home/snkr/DAMASK/build/mod_files -I/home/snkr/DAMASK/include

C_FLAGS = -g -O0 -DGTEST_HAS_PTHREAD=1

CXX_DEFINES = -DCMAKE_SYSTEM=\"Linux-5.10.16.3-microsoft-standard-WSL2\" -DDAMASKVERSION=\"3.0.0-alpha7-784-g69239661c\" -DFYAML -DPETSC -Dgrid

CXX_INCLUDES = -I/home/snkr/petsc/include -I/usr/include/eigen3 -I/home/snkr/DAMASK/src/grid -I/home/snkr/DAMASK/build/mod_files -I/home/snkr/DAMASK/include -isystem /home/snkr/petsc/arch-linux-c-debug/include

CXX_FLAGS = -g -O0 -fopenmp -DGTEST_HAS_PTHREAD=1

Fortran_DEFINES = -DCMAKE_SYSTEM=\"Linux-5.10.16.3-microsoft-standard-WSL2\" -DDAMASKVERSION=\"3.0.0-alpha7-784-g69239661c\" -DFYAML -DPETSC -Dgrid

Fortran_INCLUDES = -I/home/snkr/petsc/include -I/usr/include/eigen3 -I/home/snkr/DAMASK/src/grid -I/home/snkr/DAMASK/build/mod_files -I/home/snkr/DAMASK/include -I/home/snkr/petsc/arch-linux-c-debug/include -I/usr/include

Fortran_FLAGS =   -std=f2018 -pedantic-errors -Og  -cpp -fPIE -ffree-line-length-none -fimplicit-none -Wall -Wextra -Wcharacter-truncation -Wunderflow -Wsuggest-attribute=pure -Wsuggest-attribute=noreturn -Wconversion-extra -Wimplicit-procedure -Wunused-parameter -ffpe-summary=all  -DDEBUG -ffpe-trap=invalid,zero,overflow -g -Og -fbacktrace -fdump-core -fcheck=all -fstack-protector-all -I/home/snkr/petsc/include -I/home/snkr/petsc/arch-linux-c-debug/include  -J../../../mod_files -DGTEST_HAS_PTHREAD=1

