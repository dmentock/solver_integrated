# Remove fortran modules provided by this target.
FILE(REMOVE
  "../mod_files/cli.mod"
  "../mod_files/CLI.mod"
  "CMakeFiles/DAMASK_grid.dir/cli.mod.stamp"

  "../mod_files/config.mod"
  "../mod_files/CONFIG.mod"
  "CMakeFiles/DAMASK_grid.dir/config.mod.stamp"

  "../mod_files/constants.mod"
  "../mod_files/CONSTANTS.mod"
  "CMakeFiles/DAMASK_grid.dir/constants.mod.stamp"

  "../mod_files/crystal.mod"
  "../mod_files/CRYSTAL.mod"
  "CMakeFiles/DAMASK_grid.dir/crystal.mod.stamp"

  "../mod_files/discretization.mod"
  "../mod_files/DISCRETIZATION.mod"
  "CMakeFiles/DAMASK_grid.dir/discretization.mod.stamp"

  "../mod_files/geometry_plastic_nonlocal.mod"
  "../mod_files/GEOMETRY_PLASTIC_NONLOCAL.mod"
  "CMakeFiles/DAMASK_grid.dir/geometry_plastic_nonlocal.mod.stamp"

  "../mod_files/hdf5_utilities.mod"
  "../mod_files/HDF5_UTILITIES.mod"
  "CMakeFiles/DAMASK_grid.dir/hdf5_utilities.mod.stamp"

  "../mod_files/homogenization.mod"
  "../mod_files/HOMOGENIZATION.mod"
  "CMakeFiles/DAMASK_grid.dir/homogenization.mod.stamp"

  "../mod_files/homogenization@damage.smod"
  "../mod_files/HOMOGENIZATION@DAMAGE.smod"
  "CMakeFiles/DAMASK_grid.dir/homogenization@damage.smod.stamp"

  "../mod_files/homogenization@damage_pass.smod"
  "../mod_files/HOMOGENIZATION@DAMAGE_PASS.smod"
  "CMakeFiles/DAMASK_grid.dir/homogenization@damage_pass.smod.stamp"

  "../mod_files/homogenization@isostrain.smod"
  "../mod_files/HOMOGENIZATION@ISOSTRAIN.smod"
  "CMakeFiles/DAMASK_grid.dir/homogenization@isostrain.smod.stamp"

  "../mod_files/homogenization@isotemperature.smod"
  "../mod_files/HOMOGENIZATION@ISOTEMPERATURE.smod"
  "CMakeFiles/DAMASK_grid.dir/homogenization@isotemperature.smod.stamp"

  "../mod_files/homogenization@mechanical.smod"
  "../mod_files/HOMOGENIZATION@MECHANICAL.smod"
  "CMakeFiles/DAMASK_grid.dir/homogenization@mechanical.smod.stamp"

  "../mod_files/homogenization@mechanical_pass.smod"
  "../mod_files/HOMOGENIZATION@MECHANICAL_PASS.smod"
  "CMakeFiles/DAMASK_grid.dir/homogenization@mechanical_pass.smod.stamp"

  "../mod_files/homogenization@rgc.smod"
  "../mod_files/HOMOGENIZATION@RGC.smod"
  "CMakeFiles/DAMASK_grid.dir/homogenization@rgc.smod.stamp"

  "../mod_files/homogenization@thermal.smod"
  "../mod_files/HOMOGENIZATION@THERMAL.smod"
  "CMakeFiles/DAMASK_grid.dir/homogenization@thermal.smod.stamp"

  "../mod_files/homogenization@thermal_pass.smod"
  "../mod_files/HOMOGENIZATION@THERMAL_PASS.smod"
  "CMakeFiles/DAMASK_grid.dir/homogenization@thermal_pass.smod.stamp"

  "../mod_files/io.mod"
  "../mod_files/IO.mod"
  "CMakeFiles/DAMASK_grid.dir/io.mod.stamp"

  "../mod_files/lapack_interface.mod"
  "../mod_files/LAPACK_INTERFACE.mod"
  "CMakeFiles/DAMASK_grid.dir/lapack_interface.mod.stamp"

  "../mod_files/material.mod"
  "../mod_files/MATERIAL.mod"
  "CMakeFiles/DAMASK_grid.dir/material.mod.stamp"

  "../mod_files/materialpoint.mod"
  "../mod_files/MATERIALPOINT.mod"
  "CMakeFiles/DAMASK_grid.dir/materialpoint.mod.stamp"

  "../mod_files/math.mod"
  "../mod_files/MATH.mod"
  "CMakeFiles/DAMASK_grid.dir/math.mod.stamp"

  "../mod_files/misc.mod"
  "../mod_files/MISC.mod"
  "CMakeFiles/DAMASK_grid.dir/misc.mod.stamp"

  "../mod_files/parallelization.mod"
  "../mod_files/PARALLELIZATION.mod"
  "CMakeFiles/DAMASK_grid.dir/parallelization.mod.stamp"

  "../mod_files/phase.mod"
  "../mod_files/PHASE.mod"
  "CMakeFiles/DAMASK_grid.dir/phase.mod.stamp"

  "../mod_files/phase@anisobrittle.smod"
  "../mod_files/PHASE@ANISOBRITTLE.smod"
  "CMakeFiles/DAMASK_grid.dir/phase@anisobrittle.smod.stamp"

  "../mod_files/phase@damage.smod"
  "../mod_files/PHASE@DAMAGE.smod"
  "CMakeFiles/DAMASK_grid.dir/phase@damage.smod.stamp"

  "../mod_files/phase@dislotungsten.smod"
  "../mod_files/PHASE@DISLOTUNGSTEN.smod"
  "CMakeFiles/DAMASK_grid.dir/phase@dislotungsten.smod.stamp"

  "../mod_files/phase@dislotwin.smod"
  "../mod_files/PHASE@DISLOTWIN.smod"
  "CMakeFiles/DAMASK_grid.dir/phase@dislotwin.smod.stamp"

  "../mod_files/phase@eigen.smod"
  "../mod_files/PHASE@EIGEN.smod"
  "CMakeFiles/DAMASK_grid.dir/phase@eigen.smod.stamp"

  "../mod_files/phase@elastic.smod"
  "../mod_files/PHASE@ELASTIC.smod"
  "CMakeFiles/DAMASK_grid.dir/phase@elastic.smod.stamp"

  "../mod_files/phase@isobrittle.smod"
  "../mod_files/PHASE@ISOBRITTLE.smod"
  "CMakeFiles/DAMASK_grid.dir/phase@isobrittle.smod.stamp"

  "../mod_files/phase@isotropic.smod"
  "../mod_files/PHASE@ISOTROPIC.smod"
  "CMakeFiles/DAMASK_grid.dir/phase@isotropic.smod.stamp"

  "../mod_files/phase@kinehardening.smod"
  "../mod_files/PHASE@KINEHARDENING.smod"
  "CMakeFiles/DAMASK_grid.dir/phase@kinehardening.smod.stamp"

  "../mod_files/phase@mechanical.smod"
  "../mod_files/PHASE@MECHANICAL.smod"
  "CMakeFiles/DAMASK_grid.dir/phase@mechanical.smod.stamp"

  "../mod_files/phase@none.smod"
  "../mod_files/PHASE@NONE.smod"
  "CMakeFiles/DAMASK_grid.dir/phase@none.smod.stamp"

  "../mod_files/phase@nonlocal.smod"
  "../mod_files/PHASE@NONLOCAL.smod"
  "CMakeFiles/DAMASK_grid.dir/phase@nonlocal.smod.stamp"

  "../mod_files/phase@phenopowerlaw.smod"
  "../mod_files/PHASE@PHENOPOWERLAW.smod"
  "CMakeFiles/DAMASK_grid.dir/phase@phenopowerlaw.smod.stamp"

  "../mod_files/phase@plastic.smod"
  "../mod_files/PHASE@PLASTIC.smod"
  "CMakeFiles/DAMASK_grid.dir/phase@plastic.smod.stamp"

  "../mod_files/phase@source_dissipation.smod"
  "../mod_files/PHASE@SOURCE_DISSIPATION.smod"
  "CMakeFiles/DAMASK_grid.dir/phase@source_dissipation.smod.stamp"

  "../mod_files/phase@source_externalheat.smod"
  "../mod_files/PHASE@SOURCE_EXTERNALHEAT.smod"
  "CMakeFiles/DAMASK_grid.dir/phase@source_externalheat.smod.stamp"

  "../mod_files/phase@thermal.smod"
  "../mod_files/PHASE@THERMAL.smod"
  "CMakeFiles/DAMASK_grid.dir/phase@thermal.smod.stamp"

  "../mod_files/phase@thermalexpansion.smod"
  "../mod_files/PHASE@THERMALEXPANSION.smod"
  "CMakeFiles/DAMASK_grid.dir/phase@thermalexpansion.smod.stamp"

  "../mod_files/polynomials.mod"
  "../mod_files/POLYNOMIALS.mod"
  "CMakeFiles/DAMASK_grid.dir/polynomials.mod.stamp"

  "../mod_files/prec.mod"
  "../mod_files/PREC.mod"
  "CMakeFiles/DAMASK_grid.dir/prec.mod.stamp"

  "../mod_files/result.mod"
  "../mod_files/RESULT.mod"
  "CMakeFiles/DAMASK_grid.dir/result.mod.stamp"

  "../mod_files/rotations.mod"
  "../mod_files/ROTATIONS.mod"
  "CMakeFiles/DAMASK_grid.dir/rotations.mod.stamp"

  "../mod_files/signal.mod"
  "../mod_files/SIGNAL.mod"
  "CMakeFiles/DAMASK_grid.dir/signal.mod.stamp"

  "../mod_files/system_routines.mod"
  "../mod_files/SYSTEM_ROUTINES.mod"
  "CMakeFiles/DAMASK_grid.dir/system_routines.mod.stamp"

  "../mod_files/tables.mod"
  "../mod_files/TABLES.mod"
  "CMakeFiles/DAMASK_grid.dir/tables.mod.stamp"

  "../mod_files/yaml_parse.mod"
  "../mod_files/YAML_PARSE.mod"
  "CMakeFiles/DAMASK_grid.dir/yaml_parse.mod.stamp"

  "../mod_files/yaml_types.mod"
  "../mod_files/YAML_TYPES.mod"
  "CMakeFiles/DAMASK_grid.dir/yaml_types.mod.stamp"
  )
