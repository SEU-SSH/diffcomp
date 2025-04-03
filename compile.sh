#!/usr/bin/bash

# 设置变量
PROJECT_DIR="/app/diffcomp"
SOURCE_DIR="$PROJECT_DIR/benchmark/tiff-4.5.1"  # 源代码目录
BENCHMARK_DIR="$PROJECT_DIR/benchmark"
BUILD_O0="$BENCHMARK_DIR/tiff-4.5.1/build_O0"  # O0 编译结果目录
BUILD_O3="$BENCHMARK_DIR/tiff-4.5.1/build_O3"  # O3 编译结果目录
CORPUS_DIR="$PROJECT_DIR/corpus"
CORPUS_TIFF_DIR="$CORPUS_DIR/tiff"

# 检查源码目录是否存在且非空
echo "[*] Checking source directory..."
if [[ ! -d "$SOURCE_DIR" || -z "$(ls -A $SOURCE_DIR)" ]]; then
    echo "[-] Source directory '$SOURCE_DIR' is missing or empty."
    exit 1
fi

# 清理旧编译目录
echo "[*] Cleaning old build directories..."
rm -rf "$BUILD_O0" "$BUILD_O3"
mkdir -p "$BUILD_O0" "$BUILD_O3"

# 进入源码目录，运行 autoreconf 生成 configure
echo "[*] Running autoreconf..."
cd "$SOURCE_DIR" || { echo "[-] Failed to enter $SOURCE_DIR"; exit 1; }
autoreconf -fiv || { echo "[-] autoreconf failed"; exit 1; }

# 配置 O0 版本
echo "[*] Configuring tiffO0 (O0 version)..."
cd "$BUILD_O0" || { echo "[-] Failed to enter $BUILD_O0"; exit 1; }
"$SOURCE_DIR/configure" CC=/app/AFLplusplus/afl-clang-fast CXX=/app/AFLplusplus/afl-clang-fast++ CFLAGS="-O0 -g -fsanitize=address,undefined" CXXFLAGS="-O0 -g -fsanitize=address,undefined" LDFLAGS="-fsanitize=address,undefined" || { echo "[-] Configuration failed for tiffO0"; exit 1; }

# 编译 O0 版本
echo "[*] Compiling tiffO0..."
make -j$(nproc) || { echo "[-] Compilation failed for tiffO0"; exit 1; }

# 配置 O3 版本
echo "[*] Configuring tiffO3 (O3 version)..."
cd "$BUILD_O3" || { echo "[-] Failed to enter $BUILD_O3"; exit 1; }
"$SOURCE_DIR/configure" CC=/app/AFLplusplus/afl-clang-fast CXX=/app/AFLplusplus/afl-clang-fast++ CFLAGS="-O3 -g -fsanitize=address,undefined" CXXFLAGS="-O3 -g -fsanitize=address,undefined" LDFLAGS="-fsanitize=address,undefined" || { echo "[-] Configuration failed for tiffO3"; exit 1; }

# 编译 O3 版本
echo "[*] Compiling tiffO3..."
make -j$(nproc) || { echo "[-] Compilation failed for tiffO3"; exit 1; }

# 验证编译结果
echo "[*] Verifying compilation results..."
if [[ ! -f "$BUILD_O0/tools/tiff2pdf" || ! -f "$BUILD_O3/tools/tiff2pdf" ]]; then
    echo "[-] Compilation failed: tiff2pdf not found in tiffO0 or tiffO3"
    exit 1
fi

# 检查测试 TIFF 文件
echo "[*] Checking test TIFF file..."
if [[ ! -f "$CORPUS_TIFF_DIR/a.tiff" ]]; then
    echo "[-] a.tiff file not found in $CORPUS_TIFF_DIR"
    exit 1
fi

echo "[+] All steps completed successfully!"
