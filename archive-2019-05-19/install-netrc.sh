#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if ! [ -e ~/.netrc ]; then

  cp $DIR/netrc.asc ~/.netrc.asc

  echo "Decrypting .netrc.asc"
  gpg2 -d ~/.netrc.asc > ~/.netrc

  if [ $? -ne 0 ]; then
    rm ~/.netrc
    echo "Failed to decrypt"
  fi

else
  echo ".netrc already exists!"
fi
