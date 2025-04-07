#!/usr/bin/env bash

# 忽略丢失崩溃的警告
export AFL_I_DONT_CARE_ABOUT_MISSING_CRASHES=1

# 跳过插桩检查
export AFL_SKIP_BIN_CHECK=1

# 设置 ASAN 和 UBSAN 选项
export ASAN_OPTIONS="detect_leaks=1:symbolize=0:abort_on_error=1"
export UBSAN_OPTIONS="print_stacktrace=1:halt_on_error=1"

# 增加超时时间（5000 毫秒）
export AFL_FORKSRV_INIT_TMOUT=5000

# 调整最大文件大小限制（2 MB）
export AFL_MAX_FILE=2097152

# 创建存放差异文件的目录
mkdir -p ./differences/

# 清理旧的 `findings` 目录，确保 AFL++ 可以正常运行
rm -rf findings/*
mkdir -p findings

# 计算 CPU 核心数
CORES=$(nproc --all)
SLAVES=$((CORES - 1))

# 启动 master 进程（UI 可见）
echo "[+] 启动 master 进程..."
taskset -c 0 afl-fuzz -i corpus/tiff -o findings -M master -t 5000 -- ./harness @@ &

# 确保 master 进程启动成功
sleep 2

# 启动 slave 进程
echo "[+] 启动 $SLAVES 个 slave 进程..."
seq 1 $SLAVES | parallel -j $SLAVES "taskset -c {} afl-fuzz -i corpus/tiff -o findings -S slave{} -t 5000 -- ./harness @@ &"

# 处理 Ctrl+C 退出
trap "pkill -P $$" SIGINT

# 等待所有后台进程完成
wait
