#!/bin/bash

if [ ! -d $HOME/bin ]; then
    mkdir $HOME/bin
fi

if [ ! -d $HOME/.gnupg ]; then
    mkdir $HOME/.gnupg
fi

# TODO: Link all in bin folder to corresponding name in user bin
# Bin
ln -fs $PWD/bin/token.sh $HOME/bin/token.sh
ln -fs $PWD/bin/mount-dalla-local.sh $HOME/bin/mount-dalla-local.sh
ln -fs $PWD/bin/mount-dalla-remote.sh $HOME/bin/mount-dalla-remote.sh
ln -fs $PWD/bin/unmount-dalla.sh $HOME/bin/unmount-dalla.sh

# Configs
ln -fs $PWD/config/gitconfig $HOME/.gitconfig
ln -fs $PWD/config/gpg.conf $HOME/.gnupg/gpg.conf
ln -fs $PWD/config/gpg-agent.conf $HOME/.gnupg/gpg-agent.conf
ln -fs $PWD/config/oh-my-zsh/themes/agnoster.zsh-theme $HOME/.oh-my-zsh/themes/agnoster.zsh-theme

ln -fs $PWD/yubikey.sh $HOME/.yubikey.sh
mkdir -p $HOME/.config/nvim
ln -fs $PWD/config/init.vim $HOME/.config/nvim/init.vim

echo "Configurations and Binaries have been linked."
