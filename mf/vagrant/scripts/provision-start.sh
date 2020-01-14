#!/bin/sh

sudo apt-get update -y && 
sudo apt-get upgrade -y && 
sudo apt-get dist-upgrade -y && 
sudo apt-get install build-essential software-properties-common -y && 
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y && 
sudo apt-get update -y &&
echo "provision-start done
