#!/bin/bash
set -o errexit
set -o nounset

yum install -y epel-release
yum install -y wget sudo which fakeroot
yum groupinstall -y "Development tools"

if [[ -n "$GIT_FROM_RPMFORGE_PKG" ]]; then
  rpm -i "$GIT_FROM_RPMFORGE_PKG"
  yum --disablerepo=base,updates --enablerepo=rpmforge-extras -y install git
fi

yum clean all
