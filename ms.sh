#!/usr/bin/env bash

echo "[*] 启动 ms.sh，准备 fuzz 环境..."

# === AFL 环境变量设置 ===
export AFL_I_DONT_CARE_ABOUT_MISSING_CRASHES=1
export AFL_SKIP_BIN_CHECK=1
export ASAN_OPTIONS="detect_leaks=1:symbolize=0:abort_on_error=1"
export UBSAN_OPTIONS="print_stacktrace=1:halt_on_error=1"
export AFL_FORKSRV_INIT_TMOUT=5000
export AFL_MAX_FILE=2097152

# === 输出准备信息 ===
echo "[*] 创建输出目录..."
mkdir -p findings differences

# === 自动编译 harness ===
echo "[*] 编译 harness.c ..."
afl-clang-fast -O0 -fsanitize=address,undefined harness.c -o harness -lpcap

if [[ $? -ne 0 || ! -f ./harness ]]; then
    echo "[!] harness 编译失败"
    exit 1
fi

# === 启动 AFL 主从实例 ===
CORES=$(nproc)
echo "[+] 检测到 $CORES 个 CPU 核心"

# 主实例：CPU 0，保留交互式输出
echo "[*] 启动主实例（master，CPU 0）..."
taskset -c 0 afl-fuzz -i corpus -o findings -M master -- ./harness @@ &

# 保证主实例启动一小段时间（防止竞争终端）
sleep 2

# 从实例：CPU 1 到 CPU N-1，后台运行
for ((i = 1; i < CORES; i++)); do
    echo "[*] 启动从实例 slave$i（CPU $i）..."
    taskset -c $i afl-fuzz -i corpus -o findings -S slave$i -- ./harness @@ >> logs/slave$i.log 2>&1 &
done

# === 等待所有子进程结束（主实例输出在终端）===
wait
