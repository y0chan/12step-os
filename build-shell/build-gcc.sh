#!/bin/sh

cd /usr/local/src/gcc-3.4.6
patch -p0 < ../patch-gcc-3.4.6-x64-h8300.txt
./configure --target=h8300-elf --disable-nls --disable-threads --disable-shared --disable-werror --enable-languages=c
make
make install
