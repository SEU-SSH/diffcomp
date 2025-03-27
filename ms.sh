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

# 主实例绑定至 CPU 0
taskset -c 0 afl-fuzz -i corpus_minimized -o findings -M master -t 5000 -- ./harness @@

# 从实例绑定至所有可用核心
CORES=$(nproc)
SLAVES=$((CORES - 1))
seq 1 $SLAVES | parallel -j $SLAVES "taskset -c {} afl-fuzz -i corpus_minimized -o findings -S slave{} -t 5000 -- ./harness @@ &"

# 等待所有后台进程完成
wait