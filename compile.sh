#!/usr/bin/env bash

set -e  # 遇到错误立即退出

# 进入 /app 目录
cd /app

# 1. 配置环境
export CC=afl-clang-fast
export CXX=afl-clang-fast++
export CFLAGS="-fsanitize=address,undefined -g"
export CXXFLAGS="-fsanitize=address,undefined -g"

# 2. 下载 tcpdump 源码
if [ ! -d "tcpdump" ]; then
    echo "[*] 下载 tcpdump 源码..."
    git clone https://github.com/the-tcpdump-group/tcpdump.git
fi

cd tcpdump

echo "[*] 运行 autoreconf..."
./bootstrap.sh || autoreconf -i

echo "[*] 运行 configure (O0, ASan, UBSan)..."
./configure --disable-shared CFLAGS="-O0 -fsanitize=address,undefined -g" CXXFLAGS="-O0 -fsanitize=address,undefined -g"
make clean
make -j$(nproc)
mv tcpdump ../tcpdump_O0
chmod +x ../tcpdump_O0


echo "[*] 运行 configure (O3, ASan, UBSan)..."
make clean
./configure --disable-shared CFLAGS="-O3 -fsanitize=address,undefined -g" CXXFLAGS="-O3 -fsanitize=address,undefined -g"
make -j$(nproc)
mv tcpdump ../tcpdump_O3
chmod +x ../tcpdump_O3

# 3. 获取测试语料
mkdir -p /app/corpus
if [ ! -f "/app/corpus/sample.pcap" ]; then
    echo "[*] 下载测试语料..."
    wget -O /app/corpus/sample.pcap "https://wiki.wireshark.org/SampleCaptures?action=AttachFile&do=get&target=http.cap"
fi

echo "[*] 编译完成，生成了 tcpdump_O0 和 tcpdump_O3，并获取了语料"
