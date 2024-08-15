export KERNEL=kernel7
export ARCH=arm
export CROSS_COMPILE=~/rpi-kernel/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf-
export INSTALL_MOD_PATH=~/rpi-kernel/built-kernel
export INSTALL_DTBS_PATH=~/rpi-kernel/built-kernel
export INSTALL_PATH=~/rpi-kernel/built-kernel

make modules_install
make dtbs_install
# kernel
mkdir $INSTALL_MOD_PATH/boot
./scripts/mkknlimg ./arch/arm/boot/zImage $INSTALL_MOD_PATH/boot/$KERNEL.img
cd $INSTALL_MOD_PATH/boot
mv $KERNEL.img kernel7_rt.img