#!/bin/bash
# Fail on errors, export variables
set -e
set -a

# Environment variables

# cURL
export CURLMOPT_PIPELINING=CURLPIPE_MULTIPLEX
export CURLOPT_HTTP_VERSION=CURL_HTTP_VERSION_2_0

# NVM
export NVM_DIR=/tmp/nvm
export NODE_VERSION=v16

# Glitch
export DEFAULT_NODE_DIR=/tmp/nvm/versions/node/v16/bin

# Node
# PROJECT_DOMAIN is from Glitch
export ORIGIN="$PROJECT_DOMAIN.glitch.me"
export HOST=0.0.0.0
export PORT=3000

# Main script

mkdir -p /tmp/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
source /tmp/nvm/nvm.sh
nvm install v16
corepack enable
corepack prepare pnpm@latest-8 --activate
pnpm config set store-dir ~/.pnpm-store
pnpm install
pnpm vite dev --host $ORIGIN --port 3000