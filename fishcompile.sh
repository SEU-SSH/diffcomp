#!/usr/bin/env bash

export FF_AFL=/app/FishFuzz/FF_AFL++  # 确保路径正确

# 编译 harness（禁用 libFuzzer，修复参数问题）
$FF_AFL/afl-clang-fast++ \
  --nolibfuzzer \  # 解决参数不支持问题
  -DHAVE_AFL_CUSTOM_MEMORY=1 \
  -DAFL_HARDEN=0 \
  -fsanitize=fuzzer-no-link \
  -O2 \
  -I$FF_AFL/include \
  -g \  # 添加调试信息
  -o fishharnesstiff \
  fishharnesstiff.c

# 创建种子目录（确保文件格式正确）
mkdir -p corpus/tiff
echo -ne "\x49\x49\x2a\x00" > corpus/tiff/a.tiff  # TIFF 魔数

# 启动模糊测试
$FF_AFL/afl-fuzz \
  -i corpus/tiff/ \
  -o findings \
  -M master \
  -t 5000 \
  -- ./fishharnesstiff @@