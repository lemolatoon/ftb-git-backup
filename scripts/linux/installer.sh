#!/bin/bash
mkdir -p server
if [ "$(uname)" == 'Darwin' ] && [ "$(uname -m)" == "x86_64" ]; then
# Mac x86_64
    curl -JLO "https://api.modpacks.ch/public/modpack/90/2326/server/mac"
elif [ "$(uname)" == 'Darwin' ] && [ "$(uname -m)" == "arm64" ]; then
    curl -JLO "https://api.modpacks.ch/public/modpack/90/2326/server/arm/mac" && chmod +x serverinstall_90_2326
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
# linux
    curl -JLO "https://api.modpacks.ch/public/modpack/90/2326/server/linux"
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi
chmod +x serverinstall_90_2326