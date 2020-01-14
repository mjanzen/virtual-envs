#!/bin/sh

GCC_VER=${1:-9}
sudo apt-get install gcc-${GCC_VER} g++-${GCC_VER} -y && 
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-${GCC_VER} 60 --slave /usr/bin/g++ g++ /usr/bin/g++-${GCC_VER} && 
sudo update-alternatives --config gcc &&
echo "provision-gcc done"
