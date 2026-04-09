#!/bin/bash

llvm_dir=../../llvm-project/llvm-project/

rm -rf build && mkdir build && cd build
cmake .. \
  -DMLIR_DIR=$(llvm_dir)build/lib/cmake/mlir \
  -DLLVM_DIR=$(llvm_dir)build/lib/cmake/llvm
cmake --build .
./mlir_cpp_example