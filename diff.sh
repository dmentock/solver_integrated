  -- Checking for module 'hdf5'
  --   No package 'hdf5' found
- -- Configuring done (0.0s)
?                      ^ ^

+ -- Configuring done (2.2s)
?                      ^ ^

  -- Generating done (0.0s)
- -- Build files have been written to: /home/snkr/test/DAMASK/build/grid
?                                                 -----      -----------

+ -- Build files have been written to: /home/snkr/DAMASK
- gmake[1]: Entering directory '/home/snkr/test/DAMASK/build/grid'
- gmake[2]: Entering directory '/home/snkr/test/DAMASK/build/grid'
- gmake[3]: Entering directory '/home/snkr/test/DAMASK/build/grid'
- gmake[3]: Leaving directory '/home/snkr/test/DAMASK/build/grid'
- gmake[3]: Entering directory '/home/snkr/test/DAMASK/build/grid'
- gmake[3]: Leaving directory '/home/snkr/test/DAMASK/build/grid'
+ [ 37%] Built target fortran_library
+ [ 37%] Linking CXX static library libconfig_c.a
+ [ 38%] Built target config_c
+ [ 39%] Linking Fortran static library libbase64.a
+ [ 39%] Built target base64
+ [ 40%] Linking Fortran static library libzlib.a
+ [ 41%] Built target zlib
+ [ 42%] Linking Fortran static library libVTI.a
+ [ 43%] Built target VTI
+ [ 44%] Linking CXX static library libdiscretization_grid.a
+ [ 44%] Built target discretization_grid
+ [ 44%] Linking CXX static library libfft.a
+ [ 45%] Built target fft
+ [ 46%] Linking CXX static library libspectral.a
+ [ 46%] Built target spectral
+ [ 46%] Linking CXX static library libmech_base.a
+ [ 47%] Built target mech_base
+ [ 48%] Linking CXX static library libmech_solver_basic.a
+ [ 49%] Built target mech_solver_basic
+ [ 50%] Linking CXX static library libdamask_grid_lib.a
+ [ 51%] Built target damask_grid_lib
+ [ 52%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/prec.f90.o
+ [ 53%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/constants.f90.o
+ [ 54%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/misc.f90.o
+ [ 54%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/IO.f90.o
+ [ 54%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/system_routines.f90.o
+ [ 55%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/HDF5_utilities.f90.o
+ [ 56%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/LAPACK_interface.f90.o
+ [ 57%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/material.f90.o
+ [ 57%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/homogenization.f90.o
+ [ 57%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/homogenization_mechanical.f90.o
+ [ 58%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/homogenization_mechanical_RGC.f90.o
+ [ 59%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/homogenization_mechanical_isostrain.f90.o
+ [ 59%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/homogenization_mechanical_pass.f90.o
+ [ 60%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/phase_mechanical.f90.o
+ [ 61%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/phase_mechanical_eigen.f90.o
+ [ 61%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/phase_mechanical_eigen_thermalexpansion.f90.o
+ [ 62%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/phase_mechanical_elastic.f90.o
+ [ 63%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/phase_mechanical_plastic.f90.o
+ [ 64%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/phase_mechanical_plastic_dislotungsten.f90.o
+ [ 64%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/phase_mechanical_plastic_dislotwin.f90.o
+ [ 65%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/phase_mechanical_plastic_isotropic.f90.o
+ [ 66%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/phase_mechanical_plastic_kinehardening.f90.o
+ [ 66%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/phase_mechanical_plastic_none.f90.o
+ [ 67%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/phase_mechanical_plastic_nonlocal.f90.o
+ [ 68%] Building Fortran object src/CMakeFiles/DAMASK_grid.dir/phase_mechanical_plastic_phenopowerlaw.f90.o
+ [ 69%] Building CXX object src/CMakeFiles/DAMASK_grid.dir/grid/main.cpp.o
+ [ 69%] Linking CXX executable ../bin/DAMASK_grid
- [100%] Built target DAMASK_grid
?  ^^^

+ [ 88%] Built target DAMASK_grid
?  ^^^

- gmake[2]: Leaving directory '/home/snkr/test/DAMASK/build/grid'
- Install the project...
- -- Install configuration: "RELEASE"
- -- Installing: /home/snkr/test/DAMASK/bin/DAMASK_grid
- gmake[1]: Leaving directory '/home/snkr/test/DAMASK/build/grid'
+ [ 88%] Linking Fortran shared library libstub_fortran_interface.so
+ [ 89%] Built target stub_fortran_interface
+ [ 90%] Linking CXX executable test_cpp_fortran_interface
+ [ 90%] Built target test_cpp_fortran_interface
+ [ 91%] Linking CXX executable test_discretization_grid
+ [ 92%] Built target test_discretization_grid
+ [ 92%] Building CXX object src/grid/test/CMakeFiles/test_fft.dir/test_fft.cpp.o
+ [ 93%] Linking CXX executable test_fft
+ [ 93%] Built target test_fft
+ [ 94%] Linking CXX executable test_spectral
+ [ 94%] Built target test_spectral
+ [ 94%] Linking CXX executable test_mech_base
+ [ 95%] Built target test_mech_base
+ [ 96%] Linking CXX executable test_mech_solver_basic
+ [ 97%] Built target test_mech_solver_basic
+ [ 97%] Linking CXX executable test_damask_grid
+ [ 98%] Built target test_damask_grid
+ [ 99%] Linking CXX executable test_config
+ [100%] Built target test_config
+ oke1 <?xml version="1.0"?>
+ <VTKFile type="ImageData" version="0.1" byte_order="LittleEndian" header_type="UInt32" compressor="vtkZLibDataCompressor">
+   <ImageData WholeExtent="0 2 0 1 0 1" Origin="0 0 0" Spacing="0.00001 0.00001 0.00001" Direction="1 0 0 0 1 0 0 0 1">
+     <FieldData>
+       <Array type="String" Name="comments" NumberOfTuples="1" format="binary">
+         AQAAAACAAABeAAAAYgAAAA==eF4FwVEORTAQAMB3lH4+kW22ZRUXcAO/sqJolJVWnN/MwifnQw8pLHpNck6jJLkkTI/P2cfIT5BLvZVGjcDx3tkB2Q622s9EzjWk/hZtBUhgUJmur9veNCVaxOL3Ae0KG20=
+       </Array>
+     </FieldData>
+   <Piece Extent="0 2 0 1 0 1">
+     <PointData>
+     </PointData>
+     <CellData>
+       <DataArray type="Int64" Name="material" format="binary" RangeMin="0" RangeMax="1">
+         AQAAAACAAAAQAAAADgAAAA==eF5jYIAARigNAAAYAAI=
+       </DataArray>
+     </CellData>
+   </Piece>
+   </ImageData>
+ </VTKFile>
+ 
  
   <<<+-  parallelization init  -+>>>
  
   MPICH Version:      4.1.1
  MPICH Release date: Mon Mar  6 14:14:15 CST 2023
  MPICH ABI:          15:0:3
  MPICH Device:       ch3:sock
  MPICH configure:    --prefix=/home/snkr/petsc/arch-linux-c-debug MAKE=/usr/bin/gmake --libdir=/home/snkr/petsc/arch-linux-c-debug/lib CC=gcc CFLAGS=-fPIC -Wno-lto-type-mismatch -Wno-stringop-overflow -g -O0 AR=/usr/bin/ar ARFLAGS=cr CXX=g++ CXXFLAGS=-Wno-lto-type-mismatch -g -O0 -std=gnu++17 -fPIC FFLAGS=-fPIC -ffree-line-length-none -ffree-line-length-0 -Wno-lto-type-mismatch -g -O0 -fallow-argument-mismatch FC=gfortran F77=gfortran FCFLAGS=-fPIC -ffree-line-length-none -ffree-line-length-0 -Wno-lto-type-mismatch -g -O0 -fallow-argument-mismatch --enable-shared --with-pm=hydra --disable-java --with-hwloc=embedded --enable-fast=no --enable-error-messages=all --with-device=ch3:sock --enable-g=meminit
  MPICH CC:           gcc -fPIC -Wno-lto-type-mismatch -Wno-stringop-overflow -g -O0   -O0
  MPICH CXX:          g++ -Wno-lto-type-mismatch -g -O0 -std=gnu++17 -fPIC  -O0
  MPICH F77:          gfortran -fPIC -ffree-line-length-none -ffree-line-length-0 -Wno-lto-type-mismatch -g -O0 -fallow-argument-mismatch  -O0
  MPICH FC:           gfortran -fPIC -ffree-line-length-none -ffree-line-length-0 -Wno-lto-type-mismatch -g -O0 -fallow-argument-mismatch  -O0
  
   MPI standard: 4.0
-  OpenMP version: 201511
  
   MPI processes: 1
-  Could not get $OMP_NUM_THREADS, using default
-  OMP_NUM_THREADS: 4
  
   <<<+-  CLI init  -+>>>
- [1;94m
+ [31m
+  debug version - debug version - debug version - debug version - debug version
+ 
       _/_/_/      _/_/    _/      _/    _/_/      _/_/_/  _/    _/    _/_/_/
      _/    _/  _/    _/  _/_/  _/_/  _/    _/  _/        _/  _/            _/
     _/    _/  _/_/_/_/  _/  _/  _/  _/_/_/_/    _/_/    _/_/          _/_/
    _/    _/  _/    _/  _/      _/  _/    _/        _/  _/  _/            _/
   _/_/_/    _/    _/  _/      _/  _/    _/  _/_/_/    _/    _/    _/_/_/
-  Grid solver
+ 
+  debug version - debug version - debug version - debug version - debug version
  [0m
   F. Roters et al., Computational Materials Science 158:420–478, 2019
   https://doi.org/10.1016/j.commatsci.2018.04.030
  
-  Version: 3.0.0-alpha7-799-g2f8680e04
?                         ^^   ^^ ^^^^^

+  Version: 3.0.0-alpha7-784-g69239661c
?                         ^^  ++ ^^ ^^^

  
   Compiled with: GCC version 12.2.0
   Compiled on: Linux-5.10.16.3-microsoft-standard-WSL2
-  Compiler options: -cpp -I /home/snkr/petsc/include -I /home/snkr/petsc/arch-linux-c-debug/include -I /home/snkr/petsc/arch-linux-c-debug/include -I /home/snkr/petsc/arch-linux-c-debug/include -imultiarch x86_64-linux-gnu -D_REENTRANT -D CMAKE_SYSTEM="Linux-5.10.16.3-microsoft-standard-WSL2" -D DAMASKVERSION="3.0.0-alpha7-799-g2f8680e04" -D FYAML -D GRID -D PETSC --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=20480 -mtune=skylake -march=x86-64 -g -O0 -O2 -Wno-lto-type-mismatch -pedantic-errors -Wall -Wextra -Wcharacter-truncation -Wunderflow -Wsuggest-attribute=pure -Wsuggest-attribute=noreturn -Wconversion-extra -Wimplicit-procedure -Wunused-parameter -std=f2018 -ffree-line-length-none -ffree-line-length-0 -fallow-argument-mismatch -fopenmp -fPIE -ffree-line-length-none -fimplicit-none -ffpe-summary=all -fpre-include=/usr/include/finclude/math-vector-fortran.h
+  Compiler options: -cpp -I /home/snkr/petsc/include -I /usr/include/eigen3 -I /home/snkr/DAMASK/src/grid -I /home/snkr/petsc/arch-linux-c-debug/include -I /usr/include -I /home/snkr/petsc/include -I /home/snkr/petsc/arch-linux-c-debug/include -I /home/snkr/petsc/arch-linux-c-debug/include -I /home/snkr/petsc/arch-linux-c-debug/include -imultiarch x86_64-linux-gnu -D CMAKE_SYSTEM="Linux-5.10.16.3-microsoft-standard-WSL2" -D DAMASKVERSION="3.0.0-alpha7-784-g69239661c" -D FYAML -D PETSC -D grid -D DEBUG -mtune=generic -march=x86-64 -g -g -O0 -Og -Og -Wno-lto-type-mismatch -pedantic-errors -Wall -Wextra -Wcharacter-truncation -Wunderflow -Wsuggest-attribute=pure -Wsuggest-attribute=noreturn -Wconversion-extra -Wimplicit-procedure -Wunused-parameter -std=f2018 -ffree-line-length-none -ffree-line-length-0 -fallow-argument-mismatch -fPIE -ffree-line-length-none -fimplicit-none -ffpe-summary=all -ffpe-trap=invalid,zero,overflow -fbacktrace -fcheck=all -fstack-protector-all -J ../mod_files -fpre-include=/usr/include/finclude/math-vector-fortran.h
  
-  Compiled on: Sep 27 2023 at 15:37:30
?                    ^          ^  ^ ^^

+  Compiled on: Sep 21 2023 at 11:31:14
?                    ^          ^  ^ ^^

  
   PETSc version: 3.18.6
  
   Date: 27/09/2023
-  Time: 15:54:08
?              ^^

+  Time: 15:54:44
?              ^^

  
   Host name: mapc204
   User name: snkr
  
-  Command line call:      /home/snkr/test/DAMASK/bin/DAMASK_grid -g test_2_2x1x1.vti -l tensionX.yaml -m material.yaml
+  Command line call:      testcommand
  
-  Working directory:      /home/snkr/test/DAMASK/examples/grid
-  Geometry:               test_2_2x1x1.vti
+  Working directory:      /home/snkr/solver_integrated
+  Geometry:               examples/grid/20grains16x16x16.vti
-  Load case:              tensionX.yaml
+  Load case:              examples/grid/tensionX.yaml
?                          ++++++++++++++

   Material config:        material.yaml
-  Solver job name:        test_2_2x1x1_tensionX_material
?                          ^^ ^^^^^

+  Solver job name:        20grains16x16x16_tensionX_material
?                          ^^^^^^^ ^^  +  +

  
   <<<+-  prec init  -+>>>
  
   integer size / bit:   32
     maximum value:              2147483647
  
   real size / bit:      64
     maximum value:      0.180+309
     minimum value:      0.223-307
     epsilon value:      0.222E-15
     decimal precision:  15
  
   <<<+-  misc init  -+>>>
  
   <<<+-  IO init  -+>>>
  
-  <<<+-  base64 init  -+>>>
- 
   <<<+-  YAML_types init  -+>>>
  
   <<<+-  YAML_parse init  -+>>>
  
   libfyaml powered
  
   <<<+-  HDF5_utilities init  -+>>>
+ World Size: 1   Rank: 0
+ cells:  2 x 1 x 1
+ size:   2e-05 x 1e-05 x 1e-05 m³
+ origin: 0 0 0 m
+ 
+  <<<+-  discretization init  -+>>>
  
   <<<+-  result init  -+>>>
  
   M. Diehl et al., Integrating Materials and Manufacturing Innovation 6(1):83–91, 2017
   https://doi.org/10.1007/s40192-017-0084-5
  
   <<<+-  config init  -+>>>
  
   reading material configuration
  
   <<<+-  math init  -+>>>
  
   size  of random seed:      8
-  value of random seed:       1018470999  1269669358   238837288 -1039641439 -1267695494 -1861197559  -260110337   368900185
+  value of random seed:       -871791563  1906633954 -2131881946 -1441590385  1069022117  -928106377  2067525773   457544227
   start of random sequence: 
-                            0.48374417301895
-                            0.46607469627212
?                               ---- ^   ^^^^

+                            0.44949629949936
?                                ^^   ^^^^^^^

+                            0.75027488646800
-                            0.36640395763933
?                              ----  ^ ^  ^^^

+                            0.03884550560234
?                                ^^^ ^^^ ++ ^

-                            0.42010258499052
?                               ----- --   ^

+                            0.50459921378072
?                              ++    +++++ ^

  
   <<<+-  rotations init  -+>>>
  
   D. Rowenhorst et al., Modelling and Simulation in Materials Science and Engineering 23:083501, 2015
   https://doi.org/10.1088/0965-0393/23/8/083501
  
   <<<+-  polynomials init  -+>>>
  
   <<<+-  tables init  -+>>>
  
   <<<+-  crystal init  -+>>>
  
-  <<<+-  discretization_grid init  -+>>>
- 
-  cells:  2 × 1 × 1
-  size:   2.00E-05 × 1.00E-05 × 1.00E-05 m³
-  origin:  0.00E+00  0.00E+00  0.00E+00 m
- 
-  <<<+-  discretization init  -+>>>
- 
   <<<+-  material init  -+>>>
  
   parsed material.yaml
  
   <<<+-  phase init  -+>>>
  
   phase 1: Aluminum
  
   <<<+-  phase:mechanical init  -+>>>
  
   <<<+-  phase:mechanical:elastic init  -+>>>
  
   <<<+-  phase:mechanical:elastic:Hooke init  -+>>>
  
   # phases: 1
  
   phase 1: Aluminum
  
   <<<+-  phase:mechanical:plasticity init  -+>>>
  
   <<<+-  phase:mechanical:plastic:phenopowerlaw init  -+>>>
  
   # phases: 1
  
   phase 1: Aluminum
  
   <<<+-  phase:mechanical:eigen init  -+>>>
  
   <<<+-  phase:damage init  -+>>>
  
   <<<+-  phase:thermal init  -+>>>
  
   <<<+-  homogenization init  -+>>>
  
   <<<+-  homogenization:mechanical init  -+>>>
  
   <<<+-  homogenization:mechanical:pass init  -+>>>
  
   # homogenizations: 1
  
   <<<+-  homogenization:thermal init  -+>>>
  
   <<<+-  homogenization:damage init  -+>>>
  
   <<<+-  homogenization:damage:pass init  -+>>>
  
   <<<+-  materialpoint init  -+>>>
  
   deallocating material configuration
+ oke2
  
-  <<<+-  DAMASK_grid init  -+>>>
+  <<<+-  spectral init  -+>>>
+ 
+  M. Diehl, Diploma Thesis TU München, 2010
+ https://doi.org/10.13140/2.1.3234.3840
+ 
+  P. Eisenlohr et al., International Journal of Plasticity 46:37–53, 2013
+ https://doi.org/10.1016/j.ijplas.2012.09.012
+ 
+  P. Shanthraj et al., International Journal of Plasticity 66:31–45, 2015
+ https://doi.org/10.1016/j.ijplas.2014.02.006
  
   P. Shanthraj et al., Handbook of Mechanics of Materials, 2019
-  https://doi.org/10.1007/978-981-10-6855-3_80
? -

+ https://doi.org/10.1007/978-981-10-6855-3_80
- 
-  <<<+-  spectral_utilities init  -+>>>
- 
-  M. Diehl, Diploma Thesis TU München, 2010
-  https://doi.org/10.13140/2.1.3234.3840
- 
-  P. Eisenlohr et al., International Journal of Plasticity 46:37–53, 2013
-  https://doi.org/10.1016/j.ijplas.2012.09.012
- 
-  P. Shanthraj et al., International Journal of Plasticity 66:31–45, 2015
-  https://doi.org/10.1016/j.ijplas.2014.02.006
- 
-  P. Shanthraj et al., Handbook of Mechanics of Materials, 2019
-  https://doi.org/10.1007/978-981-10-6855-3_80
  
   FFTW initialized
+ oke3
  
   <<<+-  grid_mechanical_spectral_basic init  -+>>>
- 
-  P. Eisenlohr et al., International Journal of Plasticity 46:37–53, 2013
? -

+ P. Eisenlohr et al., International Journal of Plasticity 46:37–53, 2013
-  https://doi.org/10.1016/j.ijplas.2012.09.012
? -

+ https://doi.org/10.1016/j.ijplas.2012.09.012
  
-  P. Shanthraj et al., International Journal of Plasticity 66:31–45, 2015
? -

+ P. Shanthraj et al., International Journal of Plasticity 66:31–45, 2015
-  https://doi.org/10.1016/j.ijplas.2014.02.006
? -

+ https://doi.org/10.1016/j.ijplas.2014.02.006
  
+  <<<+-  spectral mech init  -+>>>
-  ... evaluating constitutive response ......................................
-  >> homogenization_mechanical_response
-  material_entry_homogenization           1           2
-  material_ID_homogenization           1           1
-  homogState(ho)%sizeState / state / state0           0
-  homogState(ho)%sizeState / state / state0           0
-  homogenization_F(1:3,1:3,ce)1   1.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        1.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        1.0000000000000000     
-  homogenization_F(1:3,1:3,ce)2   1.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        1.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        1.0000000000000000     
-  homogenization_F(1:3,1:3,ce)1   1.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        1.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        1.0000000000000000     
-  homogenization_F(1:3,1:3,ce)2   1.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        1.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        1.0000000000000000     
-  << homogenization_mechanical_response
   FEsolving_execElem           1           2
   FEsolving_execIP           1           1
   discretization_nIPs           1
   homogenization_Nconstituents           1
   material_ID_homogenization           1           1
-  >> phase_P
   material_ID_phase(co,ce)           1
+  phase_mechanical_P(material_ID_phase(co,ce))%data   0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000       -5.2083837964403774E-005   2.1908769816735579E-007   6.8508398985376163E-006   2.1908769816735984E-007  -5.0277663534982317E-005   1.9255589313292892E-006   6.8508398985376180E-006   1.9255589313292875E-006  -6.1863243414679296E-005
+  phase_mechanical_P full   0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000     
-  phase_mechanical_P(material_ID_phase(co,ce))%data   0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000       -4.1391408164664499E-005  -2.0174681979760847E-006   5.2008392961247168E-006  -2.0174681979760825E-006  -4.6476387904052033E-005   3.6336610782599244E-006   5.2008392961247168E-006   3.6336610782599291E-006  -6.3724276159651558E-005
-  phase_mechanical_P full  -4.1391408164664499E-005  -2.0174681979760847E-006   5.2008392961247168E-006  -2.0174681979760825E-006  -4.6476387904052033E-005   3.6336610782599244E-006   5.2008392961247168E-006   3.6336610782599291E-006  -6.3724276159651558E-005
-  P           3           3 vals:  -4.1391408164664499E-005  -2.0174681979760847E-006   5.2008392961247168E-006  -2.0174681979760825E-006  -4.6476387904052033E-005   3.6336610782599244E-006   5.2008392961247168E-006   3.6336610782599291E-006  -6.3724276159651558E-005
-  << phase_P
-  >> phase_P
   material_ID_phase(co,ce)           1
+  phase_mechanical_P(material_ID_phase(co,ce))%data   0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000       -5.2083837964403774E-005   2.1908769816735579E-007   6.8508398985376163E-006   2.1908769816735984E-007  -5.0277663534982317E-005   1.9255589313292892E-006   6.8508398985376180E-006   1.9255589313292875E-006  -6.1863243414679296E-005
+  phase_mechanical_P full  -5.2083837964403774E-005   2.1908769816735579E-007   6.8508398985376163E-006   2.1908769816735984E-007  -5.0277663534982317E-005   1.9255589313292892E-006   6.8508398985376180E-006   1.9255589313292875E-006  -6.1863243414679296E-005
-  phase_mechanical_P(material_ID_phase(co,ce))%data   0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000       -4.1391408164664499E-005  -2.0174681979760847E-006   5.2008392961247168E-006  -2.0174681979760825E-006  -4.6476387904052033E-005   3.6336610782599244E-006   5.2008392961247168E-006   3.6336610782599291E-006  -6.3724276159651558E-005
-  phase_mechanical_P full   0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000     
-  P           3           3 vals:   0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000        0.0000000000000000     
-  << phase_P
- 
-  Piola--Kirchhoff stress       / MPa =
? -

+ Piola--Kirchhoff stress       / MPa =
-        -0.0000        -0.0000         0.0000
-        -0.0000        -0.0000         0.0000
-         0.0000         0.0000        -0.0000
+ -2.60419e-11  1.09544e-13  3.42542e-12
+  1.09544e-13 -2.51388e-11  9.62779e-13
+  3.42542e-12  9.62779e-13 -3.09316e-11