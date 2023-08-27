#!/bin/bash

# Environment variables

# cURL
export CURLMOPT_PIPELINING=CURLPIPE_MULTIPLEX
export CURLOPT_HTTP_VERSION=CURL_HTTP_VERSION_2_0

# NVM
export NVM_DIR=/tmp/nvm
export NODE_VERSION=v16

# Glitch does some funny stuff with pnpm so we have to set this again
if [ $(ls /tmp/nvm/versions/node | grep v16) ]; then
    export DEFAULT_NODE_DIR=/tmp/nvm/versions/node$(ls /tmp/nvm/versions/node | grep v16)/bin
fi
export PNPM_VOLUME=$(mount -l | grep pnpm-volume | grep rw | cut -d " " -f 3)

# Node
# PROJECT_DOMAIN is from Glitch
# We don't need to export PORT here because Glitch does
export ORIGIN="$PROJECT_DOMAIN.glitch.me"

# Trying to fix glitch issues
printenv > ~/.bash_profile