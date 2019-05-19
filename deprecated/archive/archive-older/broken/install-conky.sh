#!/bin/bash

# TODO: Have a separate conky config for each device. Some devices
#       use ethernet instead of wireless

DIR=$(pwd)

mkdir $HOME/.conky
ln -fs $DIR/conkywifi $HOME/.conky/conkywifi
./conky-autostart.sh
