# ../diffcomp/
#mkdir benchmark_ncmdump/ncmdump_o0,benchmark_ncmdump/ncmdump_o3
#git clone https://github.com/taurusxin/ncmdump.git
cd ncmdump

cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=/mnt/srtp/Soafl-cc -DCMAKE_CXX_COMPILER=afl-c++ -DCMAKE_CXX_FLAGS_RELEASE=-O0 -B build_o0 &&
cmake --build build_o0 -j 8 &&
echo binary file 'ncmdump' compiled in O0 has been written in build_o0 &&
sudo cp ./build_o0/ncmdump ../benchmark_ncmdump/ncmdump_o0/ &&

cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=afl-cc -DCMAKE_CXX_COMPILER=afl-c++ -DCMAKE_CXX_FLAGS_RELEASE=-O3 -B build_o3 &&
cmake --build build_o3 -j 8 &&
echo binary file 'ncmdump' compiled in O3 has been written in build_o3 &&
sudo cp ./build_o3/ncmdump ../benchmark_ncmdump/ncmdump_o3/

cd ..

export AFL_MAX_INPUT=100485760
export AFL_MAP_SIZE=80000000

taskset -c 0 afl-fuzz -i ./corpus/ncm/ -o findings -M master -- ./harness @@ &