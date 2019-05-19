#!/bin/bash

mkdir ~/htc
sudo sshfs evert@192.168.1.115:/data/data/com.termux/files/home/ /home/$USER/htc -C -p 8022 -o allow_other,follow_symlinks,IdentityFile=/home/$USER/.ssh/htc
