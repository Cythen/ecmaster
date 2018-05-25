KERNEL_SRC=TODO

./configure --host=arm-linux-gnueabihf --with-linux-dir=$KERNEL_SRC \
    --disable-8139too --disable-e1000 --disable-e1000e --disable-r8169 --enable-generic \
    --prefix=/usr/local --enable-hrtimer --enable-debug-if --enable-debug-ring

make clean
make all modules ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-
