#!/bin/bash
# https://www.reddit.com/r/ManjaroLinux/comments/638w4d/cant_update_through_pacman_manjaro_170_stable/

sudo pacman -S mhwd libgl lib32-libgl --force
sudo pacman -Syu
