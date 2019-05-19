#!/bin/bash

if [ ! -d $HOME/dalla ]; then
    mkdir $HOME/dalla
fi

echo "Please insert Yubikey if it contains the SSH key"

sshfs evert@192.168.1.5:/ $HOME/dalla
