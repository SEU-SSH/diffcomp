#!/usr/bin/env bash

# === 环境设置 ===
export AFL_I_DONT_CARE_ABOUT_MISSING_CRASHES=1
export AFL_SKIP_BIN_CHECK=1
export AFL_FORKSRV_INIT_TMOUT=5000
export AFL_MAX_FILE_SIZE=2097152  # 修正拼写错误
export ASAN_OPTIONS="detect_leaks=1:symbolize=0:abort_on_error=1"  # 调整 ASAN 配置
export UBSAN_OPTIONS="halt_on_error=1"  # 调整 UBSAN 配置
export AFL_NO_DISTANCE_MAP=1  # 显式禁用距离映射
unset AFL_DISTANCE
unset AFL_DISTANCE_MAP
unset AFL_DISTANCE_MAP_FILE
unset AFL_NO_DISTANCE_MAP
export AFL_NO_DISTANCE=1

# === FishFuzz 路径配置 ===
AFL_PATH="/app/FishFuzz/FF_AFL++"
TARGET="./harness_tiff2pdf"
INPUT_DIR="corpus/tiff"
OUTPUT_DIR="findings"

mkdir -p "$OUTPUT_DIR" "./differences"
rm -rf "$OUTPUT_DIR"/*
mkdir -p "$OUTPUT_DIR"

# === CPU 配置 ===
TOTAL_CORES=$(nproc --all)
SLAVE_CORES=$((TOTAL_CORES - 1))

# === 启动 slaves ===
echo "[+] 启动 $SLAVE_CORES 个 slave 节点..."
for i in $(seq 1 $SLAVE_CORES); do
    taskset -c $i $AFL_PATH/afl-fuzz -i "$INPUT_DIR" -o "$OUTPUT_DIR" -S slave$i -t 5000 -- "$TARGET" @@ > "slave$i.log" 2>&1 &
done

# === 前台运行 master ===
echo "[+] 启动 master 节点（终端可见 TUI）..."
taskset -c 0 $AFL_PATH/afl-fuzz -i "$INPUT_DIR" -o "$OUTPUT_DIR" -M master -t 5000 -- "$TARGET" @@

# === 捕捉退出清理进程 ===
trap "pkill -P $$" SIGINT

wait