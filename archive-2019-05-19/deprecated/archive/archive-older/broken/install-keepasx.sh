#!/bin/bash

sudo apt-get install build-essential cmake libqt4-dev libgcrypt11-dev zlib1g-dev

mkdir $HOME/github
cd $HOME/github
git clone https://github.com/keepassx/keepassx.git

cd keepassx

git checkout master
echo "git pull..."
git pull
echo "git fetch --tags..."
git fetch --tags
latestTag=$(git describe --tags `git rev-list --tags --max-count=1`)
git checkout $latestTag

rm -rf build/

mkdir build
cd build
cmake ..
make
sudo make install
