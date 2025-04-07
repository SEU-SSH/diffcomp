#!/usr/bin/env bash

set -e

echo "[*] Checking source directory..."
cd /app/diffcomp || exit 1

# === 设置 FishFuzz 环境 ===
export AFL_PATH="/app/FishFuzz/FF_AFL"
export PATH="$AFL_PATH:$PATH"
export CC="$AFL_PATH/afl-clang-fast"
export CXX="$AFL_PATH/afl-clang-fast++"
export AFL_LLVM_INSTRUMENT=CLASSIC
export LLVM_CONFIG="llvm-config"

# === 检查 afl-llvm-pass.so 和 afl-llvm-rt.o 是否存在 ===
if [[ ! -f "$AFL_PATH/afl-llvm-pass.so" || ! -f "$AFL_PATH/afl-llvm-rt.o" ]]; then
  echo "[-] 缺少 afl-llvm-pass.so 或 afl-llvm-rt.o，请先在 FF_AFL/llvm_mode 下编译这些文件。"
  exit 1
fi

echo "[*] Cleaning old build directories..."
rm -rf benchmark/tiff-4.5.1/build_O0
rm -rf benchmark/tiff-4.5.1/build_O3
mkdir -p benchmark/tiff-4.5.1/build_O0
mkdir -p benchmark/tiff-4.5.1/build_O3

echo "[*] Running autoreconf..."
cd benchmark/tiff-4.5.1 || exit 1
autoreconf -fvi

echo "[*] Configuring tiffO0 (O0 version)..."
cd build_O0 || exit 1
CC=$AFL_PATH/afl-clang-fast CFLAGS="-O0 -g" ../configure --disable-shared --prefix="$(pwd)/install_O0"

echo "[*] Building tiffO0..."
make -j$(nproc)
make install

echo "[*] Configuring tiffO3 (O3 version)..."
cd ../build_O3 || exit 1
CC=$AFL_PATH/afl-clang-fast CFLAGS="-O3 -g" ../configure --disable-shared --prefix="$(pwd)/install_O3"

echo "[*] Building tiffO3..."
make -j$(nproc)
make install

# === 编译 fishharnesstiff.c ===
cd /app/diffcomp || exit 1
echo "[*] Compiling fishharnesstiff.c with afl-clang-fast..."
$AFL_PATH/afl-clang-fast -O2 -g -I./benchmark/tiff-4.5.1/build_O0/install_O0/include \
    fishharnesstiff.c -o fishharnesstiff \
    -L./benchmark/tiff-4.5.1/build_O0/install_O0/lib -ltiff -lz -lm

echo "[+] Build complete."
