CMAKE_CXX_COMPILER_CLANG_SCAN_DEPS=clang-scan-deps-19 CXXFLAGS=-stdlib=libc++ cmake -B build -DCMAKE_C_COMPILER=clang-19 -DCMAKE_CXX_COMPILER=clang++-19 -G Ninja
cd build
ninja
