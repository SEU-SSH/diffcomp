#!/usr/bin/env bash

set -e

# === 环境变量 ===
export AFL_I_DONT_CARE_ABOUT_MISSING_CRASHES=1
export AFL_SKIP_BIN_CHECK=1
export AFL_FORKSRV_INIT_TMOUT=5000
export AFL_MAX_FILE=2097152
export ASAN_OPTIONS="detect_leaks=1:symbolize=0:abort_on_error=1"
export UBSAN_OPTIONS="print_stacktrace=1:halt_on_error=1"
export AFL_NO_DISTANCE=1

# === 路径配置 ===
AFL_PATH="/app/FishFuzz/FF_AFL"
TARGET="./fishharnesstiff"
INPUT_DIR="corpus/tiff"
OUTPUT_DIR="findings"

# === 检查目标文件是否存在 ===
if [ ! -f "$TARGET" ]; then
  echo "[-] 目标文件 $TARGET 不存在，请先编译它！"
  exit 1
fi

# === 准备输入输出目录 ===
mkdir -p "$INPUT_DIR"
mkdir -p "$OUTPUT_DIR" "./differences"
rm -rf "$OUTPUT_DIR"/*
mkdir -p "$OUTPUT_DIR"

# === CPU 核心数 ===
TOTAL_CORES=$(nproc --all)
SLAVE_CORES=$((TOTAL_CORES - 1))

# === 捕捉 Ctrl+C 清理进程 ===
trap "echo '[!] 捕获到 Ctrl+C，正在终止所有 afl-fuzz 实例...'; pkill -P $$; exit 0" SIGINT

# === 启动 slave 节点（后台）===
echo "[+] 启动 $SLAVE_CORES 个 slave 节点..."
for i in $(seq 1 $SLAVE_CORES); do
    taskset -c $i "$AFL_PATH/afl-fuzz" -i "$INPUT_DIR" -o "$OUTPUT_DIR" -S slave$i -t 5000 -- "$TARGET" @@ > slave$i.log 2>&1 &
done

# === 前台启动 master 节点（含 TUI）===
echo "[+] 启动 master 节点（TUI 界面）..."
taskset -c 0 "$AFL_PATH/afl-fuzz" -i "$INPUT_DIR" -o "$OUTPUT_DIR" -M master -t 5000 -- "$TARGET" @@