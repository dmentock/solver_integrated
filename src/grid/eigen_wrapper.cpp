
// template <typename T, int rows, int cols>
// MatrixXd as_matrix_(const T& scalar) {
//     MatrixXd mat(rows, cols);
//     mat.fill(static_cast<double>(scalar));
//     return mat;
// }

// template <int rows, int cols>
// const MatrixXd& as_matrix_(const MatrixXd& mat) {
//     return mat;
// }

// template <typename T, int rows, int cols>
// MatrixXd as_matrix_(const Matrix<T, rows, cols>& mat_) {
//     return mat_.template cast<double>();
// }

// template <typename T, int rows, int cols>
// MatrixXd as_matrix_(const Tensor<T, 2>& tensor) {
//     MatrixXd mat(rows, cols);
//     for (int i = 0; i < rows; ++i)
//         for (int j = 0; j < cols; ++j)
//             mat(i, j) = tensor(i, j);
//     return mat;
// }

// // Your _merge implementation
// template <typename T, int rows, int cols>
// Matrix<T, rows, cols> _merge(
//     const Matrix<T, rows, cols>& A,
//     const Matrix<T, rows, cols>& B,
//     const Matrix<bool, rows, cols>& mask)
// {
//     Matrix<T, rows, cols> result;
//     for (int i = 0; i < rows; ++i) {
//         for (int j = 0; j < cols; ++j) {
//             result(i, j) = mask(i, j) ? A(i, j) : B(i, j);
//         }
//     }
//     return result;
// }

// // The main merge function that accepts scalars, matrices, and tensors
// template <typename T1, typename T2, int rows, int cols>
// Matrix<double, rows, cols> merge(const T1& A, const T2& B, const Matrix<bool, rows, cols>& mask) {
//     Matrix<double, rows, cols> matA = as_matrix_<rows, cols>(A).template cast<double>();
//     Matrix<double, rows, cols> matB = as_matrix_<rows, cols>(B).template cast<double>();
//     return _merge(matA, matB, mask);
// }

// // sum of tensor elements
// template <typename TensorType>
// auto tensor_sum(const TensorType& tensor) -> typename TensorType::Scalar {
//   using T = typename TensorType::Scalar;
//   T sum = 0;
//   for (int i = 0; i < tensor.size(); ++i) {
//     sum += tensor.data()[i];
//   }
//   return sum;
// }

// // element-wise equality of two tensors
// template <typename T1, typename T2>
// bool tensor_eq(const T1& tensor1, const T2& tensor2, double epsilon = 1e-8) {
//     assert(tensor1.dimensions() == tensor2.dimensions());
//     bool mismatch_found = false;
//     for (Eigen::Index i = 0; i < tensor1.size(); ++i) {
//         if (std::abs(tensor1.data()[i] - tensor2.data()[i]) > epsilon) {
//             if (!mismatch_found) {
//                 std::cout << "Mismatch found between tensors:" << std::endl;
//                 mismatch_found = true;
//             }
//             Eigen::array<Eigen::Index, T1::NumDimensions> index;
//             Eigen::Index idx = i;
//             for (int d = 0; d < T1::NumDimensions; ++d) {
//                 index[d] = idx % tensor1.dimension(d);
//                 idx /= tensor1.dimension(d);
//             }

//             std::cout << "At index (";
//             for (int d = 0; d < T1::NumDimensions; ++d) {
//                 std::cout << index[d];
//                 if (d < T1::NumDimensions - 1) {
//                     std::cout << ", ";
//                 }
//             }
//             std::cout << std::setprecision(17) << "): Tensor 1 = " << tensor1.data()[i] << ", Tensor 2 = " << tensor2.data()[i] << std::endl;
//         }
//     }
//     if (!mismatch_found) {
//         return true;
//     } else {
//         return false;
//     }
// }
