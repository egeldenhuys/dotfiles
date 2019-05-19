#!/bin/bash

if [ ! -d $HOME/dalla ]; then
    mkdir $HOME/dalla
fi

echo "Please insert Yubikey if it contains the SSH key"

sshfs evert@emptiness.mooo.com:/mnt/dalla-hdd $HOME/dalla -p 8022
