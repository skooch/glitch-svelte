#!/bin/bash

# Environment variables

# cURL
export CURLMOPT_PIPELINING=CURLPIPE_MULTIPLEX
export CURLOPT_HTTP_VERSION=CURL_HTTP_VERSION_2_0

# NVM
export NVM_DIR=/tmp/nvm
export NODE_VERSION=v16

# Glitch does some funny stuff with pnpm so we have to set this again
export DEFAULT_NODE_DIR=/tmp/nvm/versions/node/v16*/bin

# Node
# PROJECT_DOMAIN is from Glitch
# We don't need to export PORT here because Glitch does
export ORIGIN="$PROJECT_DOMAIN.glitch.me"