#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

$DIR/import-gpg-keys.sh

echo "Linking config files"
mkdir -p ~/.config/i3
ln -fs $DIR/config/i3/config ~/.config/i3/config

mkdir -p ~/.config/i3blocks
ln -fs $DIR/config/i3blocks/config ~/.config/i3blocks/config

mkdir -p ~/.config/termite
ln -fs $DIR/config/termite/config ~/.config/termite/config

ln -fs $DIR/gitconfig ~/.gitconfig
ln -fs $DIR/gpg.conf ~/.gpg.conf
ln -fs $DIR/gdbinit ~/.gdbinit

mkdir -p ~/.atom
ln -fs $DIR/atom/config.cson ~/.atom/config.cson

ln -fs $DIR/emacs ~/.emacs

ln -fs $DIR/xinitrc ~/.xinitrc

ln -fs $DIR/zshrc ~/.zshrc
ln -fs $DIR/zshrc.local ~/.zshrc.local
ln -fs $DIR/gpg-ssh-agent.sh ~/.gpg-ssh-agent.sh


ln -fs $DIR/global_gitignore ~/.global_gitignore
git config --global core.excludesfile ~/.global_gitignore

mkdir -p ~/.emacs-saves
