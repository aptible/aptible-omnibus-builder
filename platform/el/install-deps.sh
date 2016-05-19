#!/bin/bash
set -o errexit
set -o nounset

yum install -y epel-release
yum install -y wget sudo which fakeroot
yum groupinstall -y "Development tools"
yum clean all
