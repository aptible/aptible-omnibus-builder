#!/bin/bash
set -o errexit

ruby-install --system "ruby-${RUBY_VERSION}"
yum clean all
