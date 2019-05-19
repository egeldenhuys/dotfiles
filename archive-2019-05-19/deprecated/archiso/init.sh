#!/bin/bash

# This script is to be run as root

# Create user
! id evert && useradd -s /usr/bin/zsh -m evert
echo -en "password\npassword" | passwd evert

# Permissions
cp /root/dotfiles/archiso/init-as-user.sh /home/evert/
chown evert /home/evert/init-as-user.sh
chgrp evert /home/evert/init-as-user.sh
chmod 755 /home/evert/init-as-user.sh

# files
cp -ar /root/dotfiles /home/evert/dotfiles
chown -R evert /home/evert/dotfiles
chgrp -R evert /home/evert/dotfiles

# fork
bash /root/dotfiles/archiso/init-1.sh

chvt 2
systemctl disable getty@tty1.service
exit
