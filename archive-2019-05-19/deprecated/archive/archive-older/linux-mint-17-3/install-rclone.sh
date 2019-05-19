#!/bin/bash

# This script will download and install rclone

set -e

if [ ! -e "downloads" ]
then
	mkdir downloads
fi

cd downloads

# Fetch and unpack
#curl -O http://downloads.rclone.org/rclone-current-linux-arm.zip
wget http://downloads.rclone.org/rclone-current-linux-amd64.zip
bsdtar -xf rclone-current-*.zip
cd rclone-v*-linux-*

# Copy binary file
sudo cp rclone /usr/local/sbin/
sudo chown root:root /usr/local/sbin/rclone
sudo chmod 755 /usr/local/sbin/rclone

# Install manpage
sudo mkdir -p /usr/local/share/man/man1
sudo cp rclone.1 /usr/local/share/man/man1/
sudo mandb 

rm rclone-current-linux-amd64.zip
