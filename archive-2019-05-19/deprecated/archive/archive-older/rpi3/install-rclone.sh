#!/bin/bash

set -e

if [ ! -e "downloads" ]
then
	mkdir downloads
fi

cd downloads

# Fetch and unpack
#curl -O http://downloads.rclone.org/rclone-current-linux-arm.zip
bsdtar -xf rclone-current-linux-arm.zip
cd rclone-*-linux-arm

# Copy binary file
sudo cp rclone /usr/local/sbin/
sudo chown root:root /usr/local/sbin/rclone
sudo chmod 755 /usr/local/sbin/rclone

# Install manpage
sudo mkdir -p /usr/local/share/man/man1
sudo cp rclone.1 /usr/local/share/man/man1/
sudo mandb 
