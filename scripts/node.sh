#!/bin/bash
# Fail on errors, export variables
set -e
set -a

if [ -d "/tmp/nvm" ]; then
    echo "Custom nvm already set-up"
else
    mkdir -p /tmp/nvm
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
    source /tmp/nvm/nvm.sh
    nvm install v16
fi