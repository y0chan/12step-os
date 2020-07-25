#!/bin/sh

cd /usr/local/src/binutils-2.19.1
./configure --target=h8300-elf --disable-nls --disable-werror
make
make install
