wget https://github.com/Exiv2/exiv2/archive/refs/tags/v0.28.5.tar.gz
tar -xvf v0.28.5.tar.gz
mkdir benchmark_exiv2 benchmark_exiv2/exiv2_o0 benchmark_exiv2/exiv2_o3
cd exiv2-0.28.5

cmake -S . -B build_o0 -DCMAKE_BUILD_TYPE=Release  -DCMAKE_C_COMPILER=/mnt/e/srtp/Software_Vulnerality/diffcomp/AFLplusplus/afl-cc -DCMAKE_CXX_COMPILER=/mnt/e/srtp/Software_Vulnerality/diffcomp/AFLplusplus/afl-c++ -DCMAKE_CXX_FLAGS_RELEASE=-O0 -DCMAKE_C_FLAGS_RELEASE=-O0 -DCMAKE_INSTALL_PREFIX=/mnt/e/srtp/Software_Vulnerality/diffcomp/benchimark_exiv2/exiv2_o0
cmake --build build_o0
#ctest --test-dir build_o0 --verbose
sudo cmake --install build_o0 --prefix package_o0
sudo cp ./package_o0/bin/exiv2 ../benchmark_exiv2/exiv2_o0

cmake -S . -B build_o3 -DCMAKE_BUILD_TYPE=Release  -DCMAKE_C_COMPILER=afl-cc -DCMAKE_CXX_COMPILER=afl-c++ -DCMAKE_CXX_FLAGS_RELEASE=-O3 -DCMAKE_C_FLAGS_RELEASE=-O3
cmake --build build_o3
#ctest --test-dir build_o3 --verbose
sudo cmake --install build_o3 --prefix package_o3
sudo cp ./package_o3/bin/exiv2 ../benchmark_exiv2/exiv2_o3