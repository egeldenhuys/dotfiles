#!/bin/bash

set -e

destFile=/etc/pacman.d/mirrorlist

if grep -q "FLAG: server-fix" $destFile; then
    echo "Africa server already added to mirrorlist"
else
    sudo mv $destFile /etc/pacman.d/mirrorlist_tmp
    echo "# FLAG: server-fix" | sudo tee $destFile
    echo -e '# [Africa]\nServer = http://mirror.is.co.za/mirrors/manjaro.org/stable/$repo/$arch\n' | sudo tee --append $destFile
    cat /etc/pacman.d/mirrorlist_tmp | sudo tee --append $destFile
    echo "Africa server added to serverlist"
fi


