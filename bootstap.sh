#!/usr/bin/env bash
sudo apt-get install git -y
mkdir ~/git

if [ ! -d ~/git/machine.ubuntu ]; then
    git clone https://github.com/berkeleybross/machine.ubuntu.git ~/git/machine.ubuntu
fi

cd ~/git/machine.ubuntu

./step1.sh

