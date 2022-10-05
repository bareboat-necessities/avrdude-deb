#!/bin/bash -e

sudo apt-get -y install meson cmake make git \
 dpkg-dev debhelper devscripts equivs pkg-config

sudo apt-get -y install build-essential git cmake flex bison libelf-dev libusb-dev libhidapi-dev libftdi1-dev

dpkg-buildpackage -b -d -uc -us
