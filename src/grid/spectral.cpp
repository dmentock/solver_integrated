#include <unsupported/Eigen/CXX11/Tensor>
#include <Eigen/Dense>
#include <petsc.h>
#include <complex>
#include <iostream>

#include "utilities_tensor.h"
#include "utilities_fortran.h"
#include "spectral.h"

void Spectral::init(int spectral_derivative_id, DiscretizationGrid& grid_){
  std::cout << "\n <<<+-  spectral init  -+>>>" << std::endl;

  std::cout << "\n M. Diehl, Diploma Thesis TU München, 2010" << std::endl;
  std::cout << " https://doi.org/10.13140/2.1.3234.3840" << std::endl;

  std::cout << "\n P. Eisenlohr et al., International Journal of Plasticity 46:37–53, 2013" << std::endl;
  std::cout << " https://doi.org/10.1016/j.ijplas.2012.09.012" << std::endl;

  std::cout << "\n P. Shanthraj et al., International Journal of Plasticity 66:31–45, 2015" << std::endl;
  std::cout << " https://doi.org/10.1016/j.ijplas.2014.02.006" << std::endl;

  std::cout << "\n P. Shanthraj et al., Handbook of Mechanics of Materials, 2019" << std::endl;
  std::cout << " https://doi.org/10.1007/978-981-10-6855-3_80" << std::endl;

  wgt = std::pow(grid_.cells[0] * grid_.cells[1] * grid_.cells[2], -1);

  //get num vairables 177-210
  double scaled_geom_size[3] = {grid_.geom_size[0], grid_.geom_size[1], grid_.geom_size[2]};
  int fftw_planner_flag = FFTW_MEASURE;
  //  call fftw_set_timelimit(numerics%get_asFloat('fftw_timelimit',defaultVal=300.0_pReal)) 229
  fftw_set_timelimit(300.0);

  std::cout << "\n FFTW initialized" << std::endl;

  std::vector<int> tensorfield_extra_dims = {3, 3};

  ptrdiff_t cells1_fftw, cells1_offset;
  tensorfield.reset(new FFT<5>(grid_.cells, grid_.cells2, tensorfield_extra_dims, fftw_planner_flag,
                               cells1_fftw, cells1_offset));
  grid_.cells1_tensor = cells1_fftw;
  grid_.cells1_offset_tensor = cells1_offset;

  std::vector<int> vectorfield_extra_dims = {3};
  vectorfield.reset(new FFT<4>(grid_.cells, grid_.cells2, vectorfield_extra_dims, fftw_planner_flag,
                               cells1_fftw, cells1_offset));

  std::vector<int> scalarfield_extra_dims = {};
  scalarfield.reset(new FFT<3>(grid_.cells, grid_.cells2, scalarfield_extra_dims, fftw_planner_flag,
                               cells1_fftw, cells1_offset));

  xi1st.resize(3, grid_.cells0_reduced, grid_.cells[2], grid_.cells1_tensor);
    xi1st.setConstant(std::complex<double>(0,0));
  xi2nd.resize(3, grid_.cells0_reduced, grid_.cells[2], grid_.cells1_tensor);
    xi2nd.setConstant(std::complex<double>(0,0));

  std::array<int, 3> k_s;
  std::array<std::complex<double>, 3> freq_derivative;
  std::array<int, 3>  loop_indices;
  for (int j = grid_.cells1_offset_tensor; j < grid_.cells1_offset_tensor + grid_.cells1_tensor; ++j) {
    k_s[1] = j;
    if (j > grid_.cells[1] / 2) k_s[1] = k_s[1] - grid_.cells[1];
    for (int k = 0; k < grid_.cells[2]; ++k) {
      k_s[2] = k;
      if (k > grid_.cells[2] / 2) k_s[2] = k_s[2] - grid_.cells[2];
      for (int i = 0; i < grid_.cells0_reduced; ++i) {
        k_s[0] = i;
        freq_derivative = get_freq_derivative(spectral_derivative_id, grid_.cells, grid_.geom_size, k_s);
        for (int p = 0; p < 3; ++p) xi2nd(p, i, k, j-grid_.cells1_offset_tensor) = freq_derivative[p];
        loop_indices = {i,j,k};
        for (int p = 0; p < 3; ++p) {
          if (grid_.cells[p] == loop_indices[p]+1){
            xi1st(p, i, k, j - grid_.cells1_offset_tensor) = std::complex<double>(0.0, 0.0);
          } else {
            for (int p = 0; p < 3; ++p) {
              xi1st(p, i, k, j-grid_.cells1_offset_tensor) = xi2nd(p, i, k, j - grid_.cells1_offset_tensor);
            }
          }
        }
      }
    }
  }
  homogenization_fetch_tensor_pointers(grid_.n_cells_local); // initialize homogenization array pointers to point to the fortran definitions

}

std::array<std::complex<double>, 3> Spectral::get_freq_derivative(int spectral_derivative_id, 
                                                                  std::array<int, 3> cells, 
                                                                  std::array<double, 3> geom_size, 
                                                                  std::array<int, 3>& k_s) {
  std::array<std::complex<double>, 3> freq_derivative;
  switch (spectral_derivative_id) {
    case Config::DERIVATIVE_CONTINUOUS_ID:
      for (int i = 0; i < 3; ++i) {
        freq_derivative[i] = std::complex<double>(0.0, TAU * k_s[i] / geom_size[i]);
      }
      break;
    case Config::DERIVATIVE_CENTRAL_DIFF_ID:
      for (int i = 0; i < 3; ++i) {
        freq_derivative[i] =  std::complex<double>(0.0, sin(TAU * k_s[i] / cells[i])) /
                              std::complex<double>(2.0 * geom_size[i] / cells[i], 0.0);
      }
      break;
    case Config::DERIVATIVE_FWBW_DIFF_ID:
      for (int i = 0; i < 3; ++i) {
        freq_derivative[i] =  (std::complex<double>(cos(TAU * k_s[i] / cells[i]) - (i == 0 ? 1.0 : -1.0),
                                                    sin(TAU * k_s[i] / cells[i])) *
                               std::complex<double>(cos(TAU * k_s[(i + 1) % 3] / cells[(i + 1) % 3]) + 1.0,
                                                    sin(TAU * k_s[(i + 1) % 3] / cells[(i + 1) % 3])) *
                               std::complex<double>(cos(TAU * k_s[(i + 2) % 3] / cells[(i + 2) % 3]) + 1.0,
                                                    sin(TAU * k_s[(i + 2) % 3] / cells[(i + 2) % 3])) /
                               std::complex<double>(4.0 * geom_size[i] / cells[i]), 0.0);
      }
      break;
    default:
      throw std::runtime_error("Invalid spectral_derivative_ID value.");
  }
  return freq_derivative;
}

Tensor<double, 5> Spectral::constitutive_response(Tensor<double, 2> &P_av, 
                                                  Tensor<double, 4> &C_volAvg, 
                                                  Tensor<double, 4> &C_minMaxAvg,
                                                  TensorMap<Tensor<double, 5>> &F,
                                                  double delta_t,
                                                  int rank, 
                                                  std::optional<Eigen::Quaterniond> rot_bc_q) {

  cout << " >> constitutive_response" << endl;
  std::cout << "\n ... evaluating constitutive response ......................................" << std::endl;

  int n_cells = F.dimension(2) * F.dimension(3) * F.dimension(4);
  // Tensor<double, 3> homogenization_F(3, 3, n_cells);

  *homogenization_F = F.reshape(Eigen::array<int, 3>({3, 3, n_cells}));
  // print_f_map_raw("homogenization_F", *homogenization_F);
  // print_f_raw("P_av", P_av);
  // print_f_raw("C_volAvg", C_volAvg);
  // print_f_raw("C_minMaxAvg", C_minMaxAvg);
  // print_f_map_raw("F", F);
  // cout << "delta_t  " << delta_t << endl;
  // cout << "rank  " << rank << endl;
  int cell_start = 1;
  mechanical_response(delta_t, cell_start, n_cells);

  if (!*terminally_ill)
    thermal_response(delta_t, cell_start, n_cells);

  if (!*terminally_ill) {
    std::array<int, 2> FEsolving_execIP = {1, 1};
    std::array<int, 2> FEsolving_execElem = {1, n_cells};
    mechanical_response2(delta_t, FEsolving_execIP, FEsolving_execElem);
  }
  // print_f_map("DONE WITH CONSTITUTIVE", *homogenization_P);

  Eigen::Tensor<double, 5> P = homogenization_P->reshape(F.dimensions());
  // print_f_raw("P", P);

  Eigen::array<Eigen::Index, 3> dims_to_reduce = {2, 3, 4};
  P_av = (P.sum(dims_to_reduce) * wgt).eval();
  // print_f_raw("P_av", P_av);

  MPI_Allreduce(MPI_IN_PLACE, P_av.data(), 9, MPI_DOUBLE, MPI_SUM, MPI_COMM_WORLD);
  std::ostringstream oss;
  oss << std::fixed << std::setprecision(4);
  if (rot_bc_q.has_value()) {
    if (!rot_bc_q.value().isApprox(Eigen::Quaterniond(1.0, 0.0, 0.0, 0.0))) {
      oss << " Piola--Kirchhoff stress (lab) / MPa =\n" << P_av * 1.e-6;
      std::cout << oss.str() << std::endl;
    }
    P_av = FortranUtilities::rotate_tensor2(rot_bc_q.value(), P_av);
  }
  oss << " Piola--Kirchhoff stress       / MPa =\n" << P_av * 1.e-6;
  std::cout << oss.str() << std::endl;

  Eigen::Tensor<double, 4> dPdF_max(3, 3, 3, 3);
  dPdF_max.setZero();
  Eigen::Tensor<double, 4> dPdF_min(3, 3, 3, 3);
  dPdF_min.setConstant(std::numeric_limits<double>::max());
  double dPdF_norm_max = 0;
  double dPdF_norm_min = std::numeric_limits<double>::max(); 

  for(int i = 0; i < n_cells; i++) {
    Eigen::Tensor<double, 4> homogenization_dPdF_chip = homogenization_dPdF->chip(i, 4).square().eval();
    double norm_sq = tensor_sum(homogenization_dPdF_chip); // assuming last index is the cell index
    if (dPdF_norm_max < norm_sq) {
      dPdF_max = homogenization_dPdF->chip(i, 4);
      dPdF_norm_max = norm_sq;
    }
    if(dPdF_norm_min > norm_sq) {
      dPdF_min = homogenization_dPdF->chip(i, 4);
      dPdF_norm_min = norm_sq;
    }
  }

  std::array<double, 2> valueAndRank = {dPdF_norm_max, static_cast<double>(rank)};

  MPI_Allreduce(MPI_IN_PLACE, valueAndRank.data(), 1, MPI_DOUBLE, MPI_MAXLOC, MPI_COMM_WORLD);
  MPI_Bcast(dPdF_max.data(), 81, MPI_DOUBLE, (double)rank, MPI_COMM_WORLD);

  valueAndRank = {dPdF_norm_min, (double)rank};
  MPI_Allreduce(MPI_IN_PLACE, valueAndRank.data(), 1, MPI_DOUBLE_INT, MPI_MINLOC, MPI_COMM_WORLD);
  MPI_Bcast(dPdF_min.data(), 81, MPI_DOUBLE, rank, MPI_COMM_WORLD);

  C_minMaxAvg = 0.5 * (dPdF_max + dPdF_min);
  C_volAvg = homogenization_dPdF->sum(Eigen::array<int, 1>{4});
  
  MPI_Allreduce(MPI_IN_PLACE, C_volAvg.data(), 81, MPI_DOUBLE, MPI_SUM, MPI_COMM_WORLD);
  C_volAvg = C_volAvg * wgt;

  // print_f_raw("P", P);
  cout << " << constitutive_response" << endl;
  return P;
}


// Tensor<double, 4> MechBase::calculate_scalar_gradient(const Tensor<double, 3>& field) {
//     std::cout << "calling calculate_scalar_gradient" << std::endl;

//     Tensor<double, 4> grad(3, grid_.cells[0], grid_.cells[1], grid_.cells2);
//     // print_tensor("field", &field);
//     // print_tensor_map("scalarField_real0", *scalarField_real);
//     // // Zero out the extended part of scalarField_real
//     // scalarField_real->slice(Eigen::array<int, 3>({grid_.cells[0], 0, 0}),
//     //                        Eigen::array<int, 3>({grid_.cells0_reduced*2-grid_.cells[0], grid_.cells[1], grid_.cells2}))
//     //     .setConstant(0);
//     // // Copy field to the first part of scalarField_real
//     // scalarField_real->slice(Eigen::array<int, 3>({0, 0, 0}),
//     //                        Eigen::array<int, 3>({grid_.cells[0], grid_.cells[1], grid_.cells2})) = field;
//     // print_tensor_map("scalarField_real1", *scalarField_real);

//     // // Perform forward FFT
//     // fftw_mpi_execute_dft_r2c(plan_scalar_forth, scalarField_real->data(), scalarField_fourier_fftw);
//     // print_tensor_map("scalarField_real2", *scalarField_real);
//     // print_tensor_map("scalarField_fourier", *scalarField_fourier);

//     // // Multiply scalarField_fourier by xi1st
//     // for (int j = 0; j < grid_.cells[1]; ++j) {
//     //     for (int k = 0; k < grid_.cells[2]; ++k) {
//     //         for (int i = 0; i < grid_.cells2; ++i) {
//     //             for (int l = 0; l < 3; ++l) {
//     //                 (*vectorField_fourier)(l, i, k, j) = (*scalarField_fourier)(i, k, j) * xi1st(l, i, k, j);
//     //             }
//     //         }
//     //     }
//     // }

//     // // // Perform backward FFT
//     // // fftw_mpi_execute_dft_c2r(planVectorBack, vectorField_fourier.data(), vectorField_real.data());

//     // // // Multiply vectorField_real by wgt and extract the relevant portion
//     // // Tensor<double, 4> grad(3, grid_.cells[0], grid_.cells[1], grid_.cells[2]);
//     // // grad = vectorField_real.slice(Eigen::array<int, 4>({0, 0, 0, 0}),
//     // //                               Eigen::array<int, 4>({3, grid_.cells[0], grid_.cells[1], grid_.cells[2]})) *
//     // //        wgt;

//     return grad;
// }