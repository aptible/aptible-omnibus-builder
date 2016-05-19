#!/bin/bash
set -o errexit

apt-get update
ruby-install --system "ruby-${RUBY_VERSION}"
rm -rf /var/lib/apt/lists/*
