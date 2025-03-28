#!/bin/bash

# 设置变量
PROJECT_DIR="/app/diffcomp"
SOURCE_DIR="$PROJECT_DIR/benchmark/ngiflib"          # 源码目录
BENCHMARK_DIR="$PROJECT_DIR/benchmark"
NGIFLIB0_DIR="$BENCHMARK_DIR/ngiflib0"    # O0 编译结果目录
NGIFLIB3_DIR="$BENCHMARK_DIR/ngiflib3"    # O3 编译结果目录
CORPUS_DIR="$PROJECT_DIR/corpus"
CORPUS_GIF_DIR="$CORPUS_DIR/gif"

# 检查源码目录是否存在且非空
echo "[*] Checking source directory..."
if [[ ! -d "$SOURCE_DIR" || -z "$(ls -A $SOURCE_DIR)" ]]; then
    echo "[-] Source directory '$SOURCE_DIR' is missing or empty."
    exit 1
fi

# 清理旧文件
echo "[*] Cleaning old files..."
rm -rf "$NGIFLIB0_DIR" "$NGIFLIB3_DIR"

# 创建目标目录
echo "[*] Creating target directories..."
mkdir -p "$NGIFLIB0_DIR"
mkdir -p "$NGIFLIB3_DIR"

# 复制源码到目标目录
echo "[*] Copying source code to target directories..."
cp -r "$SOURCE_DIR"/* "$NGIFLIB0_DIR"/
cp -r "$SOURCE_DIR"/* "$NGIFLIB3_DIR"/

# 编译 ngiflib0（O0 版本）
echo "[*] Compiling ngiflib0 (O0 version) with ASan and UBSan..."
cd "$NGIFLIB0_DIR" || { echo "[-] Failed to enter $NGIFLIB0_DIR"; exit 1; }
if [[ ! -f "Makefile" ]]; then
    echo "[-] Makefile not found in $NGIFLIB0_DIR"
    exit 1
fi
make clean
make CC=/app/AFLplusplus/afl-clang-fast CXX=/app/AFLplusplus/afl-clang-fast++ \
    CFLAGS="-O0 -g -fsanitize=address,undefined" \
    CXXFLAGS="-O0 -g -fsanitize=address,undefined" \
    LDFLAGS="-fsanitize=address,undefined" || { echo "[-] Compilation failed for ngiflib0"; exit 1; }

# 编译 ngiflib3（O3 版本）
echo "[*] Compiling ngiflib3 (O3 version) with ASan and UBSan..."
cd "$NGIFLIB3_DIR" || { echo "[-] Failed to enter $NGIFLIB3_DIR"; exit 1; }
if [[ ! -f "Makefile" ]]; then
    echo "[-] Makefile not found in $NGIFLIB3_DIR"
    exit 1
fi
make clean
make CC=/app/AFLplusplus/afl-clang-fast CXX=/app/AFLplusplus/afl-clang-fast++ \
    CFLAGS="-O3 -g -fsanitize=address,undefined" \
    CXXFLAGS="-O3 -g -fsanitize=address,undefined" \
    LDFLAGS="-fsanitize=address,undefined" || { echo "[-] Compilation failed for ngiflib3"; exit 1; }

# 验证编译结果
echo "[*] Verifying compilation results..."
if [[ ! -f "$NGIFLIB0_DIR/gif2txt" || ! -f "$NGIFLIB3_DIR/gif2txt" ]]; then
    echo "[-] Compilation failed: gif2txt not found in ngiflib0 or ngiflib3"
    exit 1
fi

# 创建 corpus/gif 目录并下载示例 GIF 文件
echo "[*] Creating corpus/gif directory and downloading sample GIFs..."
mkdir -p "$CORPUS_GIF_DIR"
cd "$CORPUS_GIF_DIR" || { echo "[-] Failed to enter $CORPUS_GIF_DIR"; exit 1; }
wget https://upload.wikimedia.org/wikipedia/commons/2/2c/Rotating_earth_%28large%29.gif -O earth.gif
wget https://media.giphy.com/media/l4FGvBfw2K5xrEa0U/giphy.gif -O dog.gif

# 验证 GIF 文件是否下载成功
if [[ ! -f "$CORPUS_GIF_DIR/earth.gif" || ! -f "$CORPUS_GIF_DIR/cat.gif" || ! -f "$CORPUS_GIF_DIR/dog.gif" || ! -f "$CORPUS_GIF_DIR/coffee.gif" ]]; then
    echo "[-] Failed to download sample GIF files"
    exit 1
fi

echo "[+] All steps completed successfully!"