#!/bin/sh

set -e

echo "Installing scripts..."
sudo cp bs-fix/bs-fix.service /etc/systemd/system/
sudo cp bs-fix/bs-fix.sh /usr/bin/
sudo cp bs-fix/bs-fix.sh /lib/systemd/system-sleep

sudo systemctl enable bs-fix.service
sudo systemctl restart bs-fix.service
sudo systemctl status bs-fix.service --no-pager
