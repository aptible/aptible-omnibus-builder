#!/bin/bash
set -o errexit
set -o nounset

apt-get update
apt-get install -y sudo wget git build-essential cmake pkg-config gnupg
rm -rf /var/lib/apt/lists/*
