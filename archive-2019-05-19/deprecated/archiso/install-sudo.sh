#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Sudo
cp $DIR/sudoers /etc/sudoers
chown root /etc/sudoers
chgrp root /etc/sudoers

groupadd -f sudo
usermod -aG sudo evert
