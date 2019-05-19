#!/bin/bash

# This script will download and install borg

set -e

if [ ! -e "downloads" ]
then
	mkdir downloads
fi

cd downloads

# Fetch and unpack
#curl -O http://downloads.rclone.org/rclone-current-linux-arm.zip
wget https://github.com/borgbackup/borg/releases/download/1.0.9/borg-linux64
wget https://github.com/borgbackup/borg/releases/download/1.0.9/borg-linux64.asc

echo Importing 6D5B EF9A DD20 7580 5747 B70F 9F88 FB52 FAF7 B393

gpg --recv-keys FAF7B393
gpg --verify borg-linux64.asc

echo $?

echo Installing borg binary file to /usr/local/bin/borg
# Copy binary file
sudo cp borg-linux64 /usr/local/bin/borg
sudo chown root:root /usr/local/bin/borg
sudo chmod 755 /usr/local/bin/borg

rm borg-linux64
rm borg-linux64.asc
