#!/bin/sh

# Install CMake dependencies
sudo apt-get install libssl-dev -y

# Build latest CMake from source
version=${1:-3.16}
build=${2:-2}
mkdir ~/temp
cd ~/temp
wget -nv https://cmake.org/files/v$version/cmake-$version.$build.tar.gz &&
tar -xzf cmake-$version.$build.tar.gz &&
cd cmake-$version.$build/ &&
./bootstrap &&
make -j$(nproc) &&
sudo make install

