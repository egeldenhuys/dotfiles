#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

ln -s $DIR/zshrc ~/.zshrc
ln -s $DIR/zshrc.local ~/.zshrc.local
ln -s $DIR/gpg-ssh-agent.sh ~/.gpg-ssh-agent.sh

echo "ZSH configs have been linked"
