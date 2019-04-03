#!/usr/bin/env bash
sudo apt-get install git -y
mkdir -p ~/git

if [ ! -d ~/git/machine.ubuntu ]; then
    git clone https://github.com/berkeleybross/machine.ubuntu.git ~/git/machine.ubuntu
fi

cd ~/git/machine.ubuntu

if [[ $(git status --porcelain) ]]; then
    echo "Machine.ubuntu repository has local changes, aborting"
    exit 1
fi

git fetch --all
git checkout master origin/master

./step1.sh

