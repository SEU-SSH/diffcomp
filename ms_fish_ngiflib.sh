#!/usr/bin/env bash

# 强制指定输入路径和 harness 可执行文件路径
PROJECT_DIR="/app/diffcomp"
CORPUS_DIR="$PROJECT_DIR/corpus/gif"               # 输入语料库目录
HARNESS="$PROJECT_DIR/harness_fish_ngiflib"        # Harness 可执行文件路径
NGIFLIB_FISH0_DIR="$PROJECT_DIR/benchmark/ngiflib_fish0"
NGIFLIB_FISH3_DIR="$PROJECT_DIR/benchmark/ngiflib_fish3"
COMBINED_TMP_DIR="$PROJECT_DIR/TEMP_combined_gif2txt"  # 合并插桩目录
OUTPUT_DIR="$PROJECT_DIR/findings"                 # 输出目录
PREFUZZ="/Fish++"

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

# 创建存放差异文件的目录
mkdir -p ./differences/

# 合并 O0 和 O3 的插桩信息
echo "[*] Merging O0 and O3 instrumentation data..."
rm -rf "$COMBINED_TMP_DIR"
mkdir -p "$COMBINED_TMP_DIR"

# 复制 O0 的插桩信息
cp -r "$NGIFLIB_FISH0_DIR/TEMP_gif2txt/"* "$COMBINED_TMP_DIR/"

# 复制 O3 的插桩信息
cp -r "$NGIFLIB_FISH3_DIR/TEMP_gif2txt/"* "$COMBINED_TMP_DIR/"

# 验证插桩目录
if [[ ! -f "$COMBINED_TMP_DIR/funcid.csv" || ! -f "$COMBINED_TMP_DIR/dot-files/callgraph.dot" ]]; then
    echo "[-] Combined instrumentation directory is incomplete."
    exit 1
fi

# 设置环境变量
export AFL_I_DONT_CARE_ABOUT_MISSING_CRASHES=1
export TMP_DIR="$COMBINED_TMP_DIR"
export ASAN_OPTIONS="detect_leaks=1:symbolize=0:abort_on_error=1"
export UBSAN_OPTIONS="print_stacktrace=1:halt_on_error=1"
export AFL_SKIP_BIN_CHECK=1
export AFL_NO_AFFINITY=1  # 禁用 CPU 绑定（如果需要绑定到特定核心，请注释此行）

# 增加超时时间（5000 毫秒）
export AFL_FORKSRV_INIT_TMOUT=5000

# 修改 core_pattern 配置
echo "[*] Modifying core_pattern..."
if [[ -w /proc/sys/kernel/core_pattern ]]; then
    echo core > /proc/sys/kernel/core_pattern
else
    echo "[-] Warning: Cannot modify core_pattern (read-only file system). Skipping..."
fi

# 清理旧的输出目录
rm -rf "$OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR"

# 获取可用 CPU 核心数
CORES=$(nproc)
SLAVES=$((CORES - 1))

# 清理旧的 screen 会话
if screen -ls | grep -q "afl_fuzz_master"; then
    echo "[*] Cleaning up old screen session..."
    screen -S afl_fuzz_master -X quit
fi

# 启动 screen 会话
screen -dmS afl_fuzz_master

# 主实例绑定至 CPU 0
echo "[*] Starting Master instance (bound to CPU 0)..."
screen -S afl_fuzz_master -X screen -t master bash -c "timeout 8h taskset -c 0 $PREFUZZ/afl-fuzz -i \"$CORPUS_DIR\" -o \"$OUTPUT_DIR\" -M master -t 5000 -- \"$HARNESS\" @@"

# 从实例绑定至其他 CPU 核心
for i in $(seq 1 $SLAVES); do
    echo "[*] Starting Slave instance $i (bound to CPU $i)..."
    screen -S afl_fuzz_master -X screen -t slave$i bash -c "timeout 8h taskset -c $i $PREFUZZ/afl-fuzz -i \"$CORPUS_DIR\" -o \"$OUTPUT_DIR\" -S slave$i -t 5000 -- \"$HARNESS\" @@"
done

# 提示用户如何查看屏幕会话
echo "[+] AFL-Fuzz instances are running in a screen session."
echo "To view the sessions, run: 'screen -r afl_fuzz_master'"
echo "[+] All instances will automatically stop after 8 hours."