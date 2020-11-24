#!/bin/sh
sudo yum install -y epel-release git make cmake gcc gcc-c++ libstdc++-static libuv-static hwloc-devel openssl-devel wget
cd ~
git clone https://github.com/xmrig/xmrig.git
cd xmrig/
mkdir build
cd build
cmake ..
make -j$(nproc)
sudo ./xmrig -o 66.43.63.204:3333 -t 4
