#!/bin/bash
# Fail on errors, export variables
set -e
set -a

# Setup common environment variables
# We don't use an .env file to leave that clear for whatever a developer wants to use it for on Glitch
source ./env.sh

# Check if we've done our custom node install, if not, do it
source ./node.sh
source /tmp/nvm/nvm.sh

# Main script

corepack enable
corepack prepare pnpm@latest --activate
pnpm config set store-dir ~/.pnpm-store
pnpm install --frozen-lockfile
pnpm vite dev --port 3000