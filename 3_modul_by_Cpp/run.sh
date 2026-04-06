!/bin/bash


rm -rf build && mkdir build && cd build
cmake .. \
  -DMLIR_DIR=/path/to/llvm-project/build/lib/cmake/mlir \
  -DLLVM_DIR=/path/to/llvm-project/build/lib/cmake/llvm
cmake --build .
./mlir_cpp_example