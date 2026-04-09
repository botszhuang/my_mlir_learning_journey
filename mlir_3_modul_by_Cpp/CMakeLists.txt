cmake_minimum_required(VERSION 3.15)
project(mlir_cpp_test)

# Find MLIR/LLVM
find_package(MLIR REQUIRED CONFIG)

include_directories(${LLVM_INCLUDE_DIRS} ${MLIR_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})
link_directories(${LLVM_LIBRARY_DIRS})

add_executable(mlir_cpp_example mlir.cpp)

target_include_directories(mlir_cpp_example PRIVATE ${MLIR_INCLUDE_DIRS})

# 在 add_executable 之前
get_property(mlir_libs GLOBAL PROPERTY MLIR_ALL_LIBS)

# Link the C++ Dialect libraries (Not the CAPI ones!)
target_link_libraries(mlir_cpp_example PRIVATE
    ${mlir_libs}
)

# Since we are using LLVM/MLIR, we must use the C++17 or C++20 standard
set_target_properties(mlir_cpp_example PROPERTIES 
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED ON
)