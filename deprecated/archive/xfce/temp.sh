#!/bin/bash

#a=$(sensors | grep -A 2 radeon-pci-0008 | grep '+' | cut -c16-19)
#b=$(sensors | grep -A 2 acpitz-virtual-0 | grep '+' | cut -c16-19)
c=$(sensors | grep -A 2 k10temp-pci-00c3 | grep '+' | cut -c16-19)

echo "Temp: $c"
