#!/bin/bash
# Fail on errors, export variables
set -e
set -a

# Setup common environment variables
# We don't use an .env file to leave that clear for whatever a developer wants to use it for on Glitch
source ./scripts/env.sh

# Check if we've done our custom node install, if not, do it
source ./scripts/node.sh
source /tmp/nvm/nvm.sh

# Main script

if [ -d "./build" ]; then
    echo "Build exists, running it..." 
    node build
else
    echo "No build exists, falling back to development mode..."
    source ./scripts/glitch-dev.sh
fi