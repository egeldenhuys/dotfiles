#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

mkdir -p $HOME/.ssh
cat $DIR/ssh-public-keys >> $HOME/.ssh/authorized_keys
chmod 600 $HOME/.ssh/authorized_keys
chmod 700 $HOME/.ssh
