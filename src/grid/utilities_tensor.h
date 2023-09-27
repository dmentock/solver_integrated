#ifndef UTILITIES_TENSOR_H
#define UTILITIES_TENSOR_H

#include <iostream>
#include <vector>
#include <Eigen/Core>
#include <unsupported/Eigen/CXX11/Tensor>
#include <iomanip> // Include this header for std::setw


template <typename TensorType>
auto tensor_sum(const TensorType& tensor) -> typename TensorType::Scalar {
  using T = typename TensorType::Scalar;
  T sum = 0;
  for (int i = 0; i < tensor.size(); ++i) {
    sum += tensor.data()[i];
  }
  return sum;
}

// element-wise equality of two tensors
template <typename T1, typename T2>
bool tensor_eq(const T1& tensor1, const T2& tensor2, double epsilon = 1e-8) {
    assert(tensor1.dimensions() == tensor2.dimensions());
    bool mismatch_found = false;
    for (Eigen::Index i = 0; i < tensor1.size(); ++i) {
        if (std::abs(tensor1.data()[i] - tensor2.data()[i]) > epsilon) {
            if (!mismatch_found) {
                std::cout << "Mismatch found between tensors:" << std::endl;
                mismatch_found = true;
            }
            Eigen::array<Eigen::Index, T1::NumDimensions> index;
            Eigen::Index idx = i;
            for (int d = 0; d < T1::NumDimensions; ++d) {
                index[d] = idx % tensor1.dimension(d);
                idx /= tensor1.dimension(d);
            }

            std::cout << "At index (";
            for (int d = 0; d < T1::NumDimensions; ++d) {
                std::cout << index[d];
                if (d < T1::NumDimensions - 1) {
                    std::cout << ", ";
                }
            }
            std::cout << std::setprecision(17) << "): Tensor 1 = " << tensor1.data()[i] << ", Tensor 2 = " << tensor2.data()[i] << std::endl;
        }
    }
    if (!mismatch_found) {
        return true;
    } else {
        return false;
    }
}

// print Eigen::Tensor in fortran order (colmajor)
template <typename T, int Rank>
void print_f(const std::string& label, const Eigen::Tensor<T, Rank>& tensor) {
    std::cout << std::endl << "fortranstyle-printing tensor " << label << ", dims (";
    for (int i = 0; i < tensor.dimensions().size(); ++i) {
        std::cout << tensor.dimensions()[i];
        if (i < tensor.dimensions().size() - 1) {
            std::cout << ", ";
        }
    }
    std::cout << ")" << std::endl;
    std::array<int, Rank> index{};
    int total_elements = tensor.size();
    for (int linear_idx = 0; linear_idx < total_elements; ++linear_idx) {
        int remainder = linear_idx;
        for (int r = 0; r < Rank; ++r) {
            index[r] = remainder % tensor.dimension(r);
            remainder /= tensor.dimension(r);
        }
        std::cout << "Element ("; 
        for (int r = 0; r < Rank; ++r) {
            std::cout << index[r] + 1;  // Use 1-based indices like Fortran
            if (r < Rank - 1) std::cout << ", ";
        }
        std::cout << std::setprecision(17) << "): " << tensor.coeff(linear_idx) << std::endl;
    }
}

// print Eigen::TensorMap in fortran order (colmajor)
template <typename T, int N>
void print_f_map(const std::string& label, const Eigen::TensorMap<Eigen::Tensor<T, N>>& tensor_map) {
  Eigen::Tensor<T, N> tensor = tensor_map;
  print_f(label, tensor);
}

// produces same output as a fortran print *, statement
// mainly used for generating nicely formatted c++ tensor with python helper
template <typename T, int Rank>
void print_f_raw(const std::string& label, const Eigen::Tensor<T, Rank>& tensor) {
  std::cout << label << "  ";
  for (int i = 0; i < tensor.dimensions().size(); ++i) {
    std::cout << tensor.dimensions()[i] << "        ";
  }
  std::cout << "vals:    ";
  for (int linear_idx = 0; linear_idx < tensor.size(); ++linear_idx) {
    std::cout << std::setprecision(17) << tensor.coeff(linear_idx) << "        ";
  }
  std::cout << std::endl;
}

// converts Eigen::Matrix to Eigen::Tensor
template <typename T, int N>
Eigen::Tensor<T, 2> mat_to_tensor(Eigen::Matrix<T, N, N> mat){
    Eigen::TensorMap<Eigen::Tensor<T, 2>> tensor_map(mat.data(), N, N);
    Eigen::Tensor<T, 2> tensor = tensor_map;
    return tensor;
}

// converts Eigen::Tensor to Eigen::Matrix
template <typename Type>
Eigen::Matrix<Type, Eigen::Dynamic, Eigen::Dynamic> tensor_to_mat(Eigen::Tensor<Type, 2>& tensor){
  return Eigen::Map<Eigen::Matrix<double, Eigen::Dynamic, Eigen::Dynamic>>(tensor.data(), tensor.dimension(0), tensor.dimension(1));
}

#endif // UTILITIES_TENSOR_H