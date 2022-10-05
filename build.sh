#!/bin/bash -e

git clone https://github.com/avrdudes/avrdude
cd avrdude
cmake -D CMAKE_BUILD_TYPE=RelWithDebInfo -D HAVE_LINUXGPIO=1 -D HAVE_LINUXSPI=1 -B build_linux
cd build_linux/
make -j 4
make install DESTDIR=../../debian/tmp/usr/local
cd ../../


