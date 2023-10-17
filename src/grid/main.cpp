#include "damask_grid.h"
#include "test/conftest.h"
#include "spectral.h"

extern "C" {
  void f_materialpoint_initBase();
  void f_materialpoint_initDamask();
}
void materialpoint_initBase() {
  f_materialpoint_initBase();
}
void materialpoint_initDamask() {
  f_materialpoint_initDamask();
}

int main(int argc, char *argv[])
{
  // MockDiscretizedGrid mock_grid(std::array<int, 3>{20,1,1});
  // // initially mock loaded material file
  // Eigen::Tensor<int, 1> material_at(mock_grid.n_cells_global);
  // for (size_t i = 0; i < mock_grid.n_cells_global; i++) {
  //   material_at[i] = i+1;
  // }
  // Eigen::Tensor<double, 2> ip_coords0;
  // mock_grid.calculate_ip_coords0(ip_coords0, mock_grid.cells, mock_grid.geom_size, 0);
  // Eigen::Tensor<double, 2> node_coords0;
  // mock_grid.calculate_node_coords0(node_coords0, mock_grid.cells, mock_grid.geom_size, 0);
  // int shared_nodes_begin = (mock_grid.world_rank+1 == mock_grid.world_size) ? 
  //   (mock_grid.cells[0]+1) * (mock_grid.cells[1]+1) * mock_grid.cells2 : 
  //   (mock_grid.cells[0]+1) * (mock_grid.cells[1]+1) * (mock_grid.cells2+1);
  // mock_grid.discretization_init(material_at.data(), mock_grid.n_cells_global,
  //                               ip_coords0.data(), ip_coords0.dimension(1),
  //                               node_coords0.data(), node_coords0.dimension(1),
  //                               shared_nodes_begin);
  std::cout << std::fixed << std::setprecision(16);
  Config config;
  config.numerics = config.parse_numerics_yaml("examples/grid/numerics.yaml");
  config.load_steps = config.parse_load_yaml("examples/grid/tensionX.yaml", config.fields);
  config.vti_file = config.read_file("examples/grid/test_2_2x1x1.vti");

  // cout << "oke1 " << config.vti_file << endl;

  materialpoint_initBase();
  DiscretizationGrid grid_;
  grid_.init(false, config.vti_file);
  materialpoint_initDamask();



  // cout << "oke2" << endl;

  Spectral spectral;
  spectral.init(0, grid_);
  // cout << "oke3" << endl;

  DamaskGrid damask_grid;
  damask_grid.init(config, grid_, spectral);
  // cout << "oke4" << endl;

  int stag_it_max = 10;
  int max_cut_back = 3;

  damask_grid.loop_over_loadcase(config.load_steps, stag_it_max, max_cut_back);
  // cout << "oke5" << endl;

  return 0;
}