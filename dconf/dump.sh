#!/bin/bash

dconf dump /org/cinnamon/ > cinnamon.dconf
dconf dump /org/nemo/ > nemo.dconf
