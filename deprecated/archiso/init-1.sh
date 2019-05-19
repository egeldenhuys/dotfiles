#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Give us all the power
$DIR/install-sudo.sh

# autologin
mkdir -p /etc/systemd/system/getty@tty2.service.d
cp -f $DIR/autologin.conf /etc/systemd/system/getty@tty2.service.d/
chown root /etc/systemd/system/getty@tty2.service.d/autologin.conf
chgrp root /etc/systemd/system/getty@tty2.service.d/autologin.conf
chmod 644 /etc/systemd/system/getty@tty2.service.d/autologin.conf

# Install
sudo -u evert -H /home/evert/init-as-user.sh
rm /etc/systemd/system/getty@tty1.service.d/autologin.conf
