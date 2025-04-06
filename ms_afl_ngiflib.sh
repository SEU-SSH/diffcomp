#!/usr/bin/env bash

# 强制指定输入路径和 harness 可执行文件路径
CORPUS_DIR="/app/diffcomp/corpus/gif"  # 输入语料库目录
HARNESS="/app/diffcomp/harness_afl_ngiflib"        # Harness 可执行文件路径

# 强制指定输出目录
OUTPUT_DIR="/app/diffcomp/findings"

# 检查语料库目录是否存在
if [[ ! -d "$CORPUS_DIR" ]]; then
    echo "[-] Corpus directory '$CORPUS_DIR' does not exist."
    exit 1
fi

# 检查 harness 可执行文件是否存在且可执行
if [[ ! -x "$HARNESS" ]]; then
    echo "[-] Harness executable '$HARNESS' does not exist or is not executable."
    exit 1
fi

# 忽略丢失崩溃的警告
export AFL_I_DONT_CARE_ABOUT_MISSING_CRASHES=1

# 跳过插桩检查
export AFL_SKIP_BIN_CHECK=1

# 设置 ASAN 和 UBSAN 选项
export ASAN_OPTIONS="detect_leaks=1:symbolize=0:abort_on_error=1"
export UBSAN_OPTIONS="print_stacktrace=1:halt_on_error=1"

# 增加超时时间（5000 毫秒）
export AFL_FORKSRV_INIT_TMOUT=5000

# 修改 core_pattern 配置
echo "[*] Modifying core_pattern..."
echo core > /proc/sys/kernel/core_pattern

# 禁用 CPU 绑定
export AFL_NO_AFFINITY=1

# 创建存放差异文件的目录
mkdir -p ./differences/

# 清理旧的输出目录
rm -rf "$OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR"

# 获取可用 CPU 核心数
CORES=$(nproc)
SLAVES=$((CORES - 1))

# 主实例绑定至 CPU 0
echo "[*] Starting Master instance (bound to CPU 0)..."
taskset -c 0 afl-fuzz -i "$CORPUS_DIR" -o "$OUTPUT_DIR" -M master -t 5000 -- "$HARNESS" @@ &

# 从实例绑定至其他 CPU 核心
echo "[*] Starting $SLAVES Slave instances..."
seq 1 $SLAVES | parallel -j $SLAVES "taskset -c {} afl-fuzz -i '$CORPUS_DIR' -o '$OUTPUT_DIR' -S slave{} -t 5000 -- '$HARNESS' @@ > slave{}.log 2>&1 &"

# 等待所有后台进程完成
wait

echo "[+] Fuzzing process completed successfully!"