#!/bin/bash

# 设置变量
PROJECT_DIR="/app/diffcomp"
SOURCE_DIR="$PROJECT_DIR/benchmark/ngiflib"          # 源码目录
BENCHMARK_DIR="$PROJECT_DIR/benchmark"
NGIFLIB0_DIR="$BENCHMARK_DIR/ngiflib_fish0"    # O0 编译结果目录
NGIFLIB3_DIR="$BENCHMARK_DIR/ngiflib_fish3"    # O3 编译结果目录
CORPUS_DIR="$PROJECT_DIR/corpus"
CORPUS_GIF_DIR="$CORPUS_DIR/gif"
NGIFLIB_REPO="https://github.com/miniupnp/ngiflib.git"  # ngiflib 仓库地址
NGIFLIB_REPO_HTTP="http://github.com/miniupnp/ngiflib.git"  # HTTP 备用地址
FISHFUZZ_DIR="/Fish++"  # FishFuzz 安装目录

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

# 尝试使用 HTTPS 克隆
git clone --depth 1 "$NGIFLIB_REPO" "$SOURCE_DIR" || {
    echo "[!] HTTPS clone failed, trying HTTP alternative..."
    # 尝试使用 HTTP 克隆
    git clone --depth 1 "$NGIFLIB_REPO_HTTP" "$SOURCE_DIR" || {
        # 如果两种方式都失败，尝试先禁用 SSL 验证
        echo "[!] HTTP clone also failed, trying with SSL verification disabled..."
        GIT_SSL_NO_VERIFY=true git clone --depth 1 "$NGIFLIB_REPO" "$SOURCE_DIR" || {
            echo "[-] All clone attempts failed. Please check your network connection."
            echo "[-] You can try manually cloning the repo to $SOURCE_DIR and rerun this script."
            exit 1
        }
    }
}

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

# 设置 FishFuzz 环境变量
export FF_DRIVER_NAME="gif2txt"  # 我们要 fuzz 的目标程序
export PREFUZZ="$FISHFUZZ_DIR/FF_AFL++"  # 使用 FF_AFL++

# 编译 ngiflib0（O0 版本）使用 FishFuzz
echo "[*] Compiling ngiflib0 (O0 version) with FishFuzz..."
cd "$NGIFLIB0_DIR" || { echo "[-] Failed to enter $NGIFLIB0_DIR"; exit 1; }
if [[ ! -f "Makefile" ]]; then
    echo "[-] Makefile not found in $NGIFLIB0_DIR"
    exit 1
fi

# 修复 Makefile 配置
fix_makefile "$NGIFLIB0_DIR/Makefile"

# 使用 FishFuzz 的 all-in-one 包装器进行编译
export CC="$FISHFUZZ_DIR/ff-all-in-one -fsanitize=address"
export CXX="$FISHFUZZ_DIR/ff-all-in-one++ -fsanitize=address"
export CFLAGS="-O0 -g -fno-omit-frame-pointer"
export CXXFLAGS="-O0 -g -fno-omit-frame-pointer"

make clean
make -j$(nproc) || { echo "[-] Compilation failed for ngiflib0"; exit 1; }

# 检查生成的 .fuzz 文件
if [[ ! -f "$NGIFLIB0_DIR/gif2txt.fuzz" ]]; then
    echo "[-] FishFuzz compilation failed: gif2txt.fuzz not found in ngiflib0"
    exit 1
fi

# 编译 ngiflib3（O3 版本）使用 FishFuzz
echo "[*] Compiling ngiflib3 (O3 version) with FishFuzz..."
cd "$NGIFLIB3_DIR" || { echo "[-] Failed to enter $NGIFLIB3_DIR"; exit 1; }
if [[ ! -f "Makefile" ]]; then
    echo "[-] Makefile not found in $NGIFLIB3_DIR"
    exit 1
fi

# 修复 Makefile 配置
fix_makefile "$NGIFLIB3_DIR/Makefile"

# 使用 FishFuzz 的 all-in-one 包装器进行编译
export CC="$FISHFUZZ_DIR/ff-all-in-one -fsanitize=address"
export CXX="$FISHFUZZ_DIR/ff-all-in-one++ -fsanitize=address"
export CFLAGS="-O3 -g -fno-omit-frame-pointer"
export CXXFLAGS="-O3 -g -fno-omit-frame-pointer"

make clean
make -j$(nproc) || { echo "[-] Compilation failed for ngiflib3"; exit 1; }

# 检查生成的 .fuzz 文件
if [[ ! -f "$NGIFLIB3_DIR/gif2txt.fuzz" ]]; then
    echo "[-] FishFuzz compilation failed: gif2txt.fuzz not found in ngiflib3"
    exit 1
fi

# 创建 corpus/gif 目录并下载示例 GIF 文件
echo "[*] Creating corpus/gif directory and downloading sample GIFs..."
mkdir -p "$CORPUS_GIF_DIR"
cd "$CORPUS_GIF_DIR" || { echo "[-] Failed to enter $CORPUS_GIF_DIR"; exit 1; }

# 尝试下载 GIF 文件，如果失败则继续（不是关键错误）
wget --no-check-certificate https://upload.wikimedia.org/wikipedia/commons/2/2c/Rotating_earth_%28large%29.gif -O earth.gif || \
    echo "[!] Failed to download earth.gif (non-critical)"
wget --no-check-certificate https://media.giphy.com/media/l4FGvBfw2K5xrEa0U/giphy.gif -O dog.gif || \
    echo "[!] Failed to download dog.gif (non-critical)"

# 检查是否至少有一个 GIF 文件下载成功
if [[ ! -f "$CORPUS_GIF_DIR/earth.gif" && ! -f "$CORPUS_GIF_DIR/dog.gif" ]]; then
    echo "[!] Warning: Failed to download sample GIF files, corpus will be empty"
    echo "[!] You may want to manually add some GIF files to $CORPUS_GIF_DIR"
fi

echo "[+] All steps completed successfully!"