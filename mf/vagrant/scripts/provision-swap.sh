#!/bin/sh

sudo apt-get install swapspace -y &&
sudo service swapspace status &&
echo "provision-utils done"
