#!/bin/bash

export ARCH=arm64
export CROSS_COMPILE="ccache ../toolchain/bin/aarch64-linux-gnu-"

make exynos7570-j4lte_defconfig
make exynos7570-j4lte_mea_open_02.dtb
./tools/dtbtool arch/arm64/boot/dts/ -o arch/arm64/boot/dtb
make -j$(nproc --all)
