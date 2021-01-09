#!/usr/bin/env bash
# This script downloads this repo and runs it, presuming a fresh Ubuntu 20.04 machine

set -e

if [[ $EUID -eq 0 ]]; then
    echo "This script must NOT be run as root - we sudo as appropriate"
    exit 1
fi

sudo apt-get install git -y
mkdir -p ~/sources

if [ ! -d ~/sources/setup ]; then
    git clone https://github.com/berkeleybross/setup.git ~/sources/setup
fi

(
    cd ~/sources/setup

    if [[ $(git status --porcelain) ]]; then
        printf "\n\nSetup repository has local changes, aborting\n\n" >&2 
        exit 1
    fi

    sudo ./scripts/install-apps_ubuntu.sh
    ./run-all.ps1
)
