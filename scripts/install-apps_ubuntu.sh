#!/bin/bash

set -e

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root"
    exit 1
fi

apt-get update

# Install these first so that you can listen to music whilst installing :)
snap install chromium
snap install spotify

# SDKs and runtimes
snap install docker
snap install dotnet-sdk --channel=3.1/stable --classic
snap install node --channel=14/stable --classic
snap install powershell --classic

# IDEs / Dev tools
snap install code --classic
snap install gitkraken --classic
snap install rider --classic

# Tools
apt install libnss3-tools # needed for certutil (to install dev-certs)
