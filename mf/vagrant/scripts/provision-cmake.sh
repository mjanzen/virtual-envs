#!/bin/sh

if [ -z "$1" ]; then
	sudo apt-get install cmake -y &&
	echo "provision-cmake done"
else
	# Build latest CMake from source
	version=${1}
	build=${2:-1}
	mkdir -p ~/temp
	cd ~/temp
	sudo apt-get install libssl-dev -y &&
	wget -nv https://cmake.org/files/v$version/cmake-$version.$build.tar.gz &&
	tar -xzf cmake-$version.$build.tar.gz &&
	cd cmake-$version.$build/ &&
	./bootstrap &&
	make -j$(nproc) &&
	sudo make install &&
	echo "provision-cmake done"
fi

