#!/bin/bash
set -o errexit
set -o nounset

apt-key update
apt-get update
apt-get install -y sudo wget git build-essential
rm -rf /var/lib/apt/lists/*
