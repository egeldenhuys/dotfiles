#!/bin/bash

dconf dump /org/cinnamon/ > cinnamon.dconf
dconf dump /org/nemo/ > nemo.dconf
dconf dump /org/gnome/terminal/ > gnome-terminal.dconf
