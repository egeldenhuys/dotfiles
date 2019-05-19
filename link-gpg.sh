#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

mkdir -p ~/.gnupg
ln -fs $DIR/gpg.conf ~/.gnupg/gpg.conf
