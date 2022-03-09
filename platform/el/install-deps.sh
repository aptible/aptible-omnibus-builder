#!/bin/bash
set -o errexit
set -o nounset

yum update -y yum ca-certificates
yum install -y epel-release
yum install -y wget sudo which fakeroot
yum groupinstall -y "Development tools"

# manually install cmake because the one provided by
# yum is 2.x and we need >= 3.5.x
wget https://cmake.org/files/v3.12/cmake-3.12.3.tar.gz
tar zxvf cmake-3.*
cd cmake-3.*
./bootstrap --prefix=/usr/local
make -j$(nproc)
make install

yum clean all
