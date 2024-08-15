export KERNEL=kernel7
export ARCH=arm
export CROSS_COMPILE=~/rpi-kernel/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-
export INSTALL_MOD_PATH=~/rpi-kernel/built-kernel
export INSTALL_DTBS_PATH=~/rpi-kernel/built-kernel

make bcm2709_defconfig
