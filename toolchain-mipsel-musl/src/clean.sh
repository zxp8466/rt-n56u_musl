#!/bin/sh

. ./config.sh

rm -rf binutils-*
rm -rf musl-*
rm -rf gcc-*
rm -rf linux-*
rm -rf kernel-headers-*
rm -rf include
rm -rf "$CC_BASE_PREFIX/$TARGET_TOOLCHAIN"