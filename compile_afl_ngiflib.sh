#!/bin/bash

# 设置变量
PROJECT_DIR="/app/diffcomp"
SOURCE_DIR="$PROJECT_DIR/benchmark/ngiflib"          # 源码目录
BENCHMARK_DIR="$PROJECT_DIR/benchmark"
NGIFLIB0_DIR="$BENCHMARK_DIR/ngiflib0"    # O0 编译结果目录
NGIFLIB3_DIR="$BENCHMARK_DIR/ngiflib3"    # O3 编译结果目录
CORPUS_DIR="$PROJECT_DIR/corpus"
CORPUS_GIF_DIR="$CORPUS_DIR/gif"
NGIFLIB_REPO="https://github.com/miniupnp/ngiflib.git"  # ngiflib 仓库地址

# 检查依赖项是否已安装
check_dependencies() {
    local dependencies=("pkg-config" "libsdl1.2-dev" "git" "wget")
    for dep in "${dependencies[@]}"; do
        if ! dpkg -l | grep -q "$dep"; then
            echo "[-] Missing dependency: $dep"
            echo "[*] Attempting to install $dep..."
            apt-get update && apt-get install -y "$dep" || { echo "[-] Failed to install $dep"; exit 1; }
        fi
    done
}

# 检查并创建项目目录
echo "[*] Creating project directory..."
mkdir -p "$PROJECT_DIR"

# 检查依赖项
echo "[*] Checking dependencies..."
check_dependencies

# 获取 ngiflib 源码
echo "[*] Fetching ngiflib source code from $NGIFLIB_REPO..."
if [[ -d "$SOURCE_DIR" ]]; then
    echo "[*] Removing existing ngiflib source directory..."
    rm -rf "$SOURCE_DIR"
fi
git clone --depth 1 "$NGIFLIB_REPO" "$SOURCE_DIR" || { echo "[-] Failed to clone ngiflib repository"; exit 1; }

# 检查源码目录是否存在且非空
echo "[*] Checking source directory..."
if [[ ! -d "$SOURCE_DIR" || -z "$(ls -A $SOURCE_DIR)" ]]; then
    echo "[-] Source directory '$SOURCE_DIR' is missing or empty."
    exit 1
fi

# 清理旧文件（仅清理目标目录，不删除）
echo "[*] Cleaning old files..."
mkdir -p "$NGIFLIB0_DIR"
mkdir -p "$NGIFLIB3_DIR"
find "$NGIFLIB0_DIR" -mindepth 1 -delete
find "$NGIFLIB3_DIR" -mindepth 1 -delete

# 复制源码到目标目录
echo "[*] Copying source code to target directories..."
cp -r "$SOURCE_DIR"/* "$NGIFLIB0_DIR"/
cp -r "$SOURCE_DIR"/* "$NGIFLIB3_DIR"/

# 确保 Makefile 配置正确
fix_makefile() {
    local makefile_path="$1"
    if [[ -f "$makefile_path" ]]; then
        echo "[*] Fixing Makefile at $makefile_path..."
        sed -i '/CFLAGS/s/$/ $(shell pkg-config --cflags sdl)/' "$makefile_path"
        sed -i '/LDFLAGS/s/$/ $(shell pkg-config --libs sdl)/' "$makefile_path"
    else
        echo "[-] Makefile not found at $makefile_path"
        exit 1
    fi
}

# 编译 ngiflib0（O0 版本）
echo "[*] Compiling ngiflib0 (O0 version) with ASan and UBSan..."
cd "$NGIFLIB0_DIR" || { echo "[-] Failed to enter $NGIFLIB0_DIR"; exit 1; }
fix_makefile "$NGIFLIB0_DIR/Makefile"
make clean
make CC=/app/AFLplusplus/afl-clang-fast CXX=/app/AFLplusplus/afl-clang-fast++ \
    CFLAGS="-O0 -g -fsanitize=address,undefined" \
    CXXFLAGS="-O0 -g -fsanitize=address,undefined" \
    LDFLAGS="-fsanitize=address,undefined" || { echo "[-] Compilation failed for ngiflib0"; exit 1; }

# 编译 ngiflib3（O3 版本）
echo "[*] Compiling ngiflib3 (O3 version) with ASan and UBSan..."
cd "$NGIFLIB3_DIR" || { echo "[-] Failed to enter $NGIFLIB3_DIR"; exit 1; }
fix_makefile "$NGIFLIB3_DIR/Makefile"
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
if [[ ! -f "$CORPUS_GIF_DIR/earth.gif" || ! -f "$CORPUS_GIF_DIR/dog.gif" ]]; then
    echo "[-] Failed to download sample GIF files"
    exit 1
fi

echo "[+] All steps completed successfully!"