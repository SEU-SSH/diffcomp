export AFL_I_DONT_CARE_ABOUT_MISSING_CRASHES=1
export LD_LIBRARY_PATH="./exiv2-0.28.5/build_o0/lib:$LD_LIBRARY_PATH" 

#依赖项
#sudo apt install --yes build-essential ccache clang cmake git google-mock libbrotli-dev libcurl4-openssl-dev libexpat1-dev libgtest-dev libinih-dev libssh-dev libxml2-utils libz-dev python3 zlib1g-dev

# 主实例绑定至CPU0
#taskset -c 0 AFL_MAP_SIZE=100000000 afl-fuzz -i ./corpus/ncm/ -o findings -M master -- ./benchmark_ncmdump/ncmdump_o0/ncmdump -d @@ -o ../../flacs
taskset -c 0 afl-fuzz -i ./corpus/image/ -o findings -- ./harness @@

# 从实例绑定至CPU1-31，共31个核心
seq 1 23 | parallel -j 24 "taskset -c {} afl-fuzz -i corpus/pdf -o findings -S slave{} -- ./harness @@ &"

# 等待所有后台进程完成
wait