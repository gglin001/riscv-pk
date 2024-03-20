# riscv toolchain is built with glibc

mkdir -p build && pushd build

# RISCV=/opt/riscv_llvm_newlib
RISCV=/opt/riscv

CC=$RISCV/bin/riscv64-unknown-elf-gcc \
  CXX=$RISCV/bin/riscv64-unknown-elf-g++ \
  ../configure --host=riscv64-unknown-elf --prefix=$PWD/install

bear -- make -j$(nproc)
make install

popd
