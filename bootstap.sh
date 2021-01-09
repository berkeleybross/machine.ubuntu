#!/usr/bin/env bash
sudo apt-get install git -y
mkdir -p ~/source

if [ ! -d ~/source/setup ]; then
    git clone https://github.com/berkeleybross/setup.git ~/git/setup
fi

cd ~/git/setup

if [[ $(git status --porcelain) ]]; then
    printf "\n\nMachine.ubuntu repository has local changes, aborting\n\n" >&2 
    exit 1
fi

git fetch --all
git reset origin/master

./step1.sh
./cloneAllRepos.ps1
