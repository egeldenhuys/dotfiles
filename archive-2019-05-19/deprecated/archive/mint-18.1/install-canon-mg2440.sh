#!/bin/bash

set -e

# Dowload drivers
echo "Downloading drivers..."
wget "https://drive.google.com/uc?export=download&id=0B8kBbwC3rwHNazNSd3JnaFNkTjA" -O cnijfilter-mg2400series-4.00-1-deb.tar.gz
wget "https://drive.google.com/uc?export=download&id=0B8kBbwC3rwHNZzhFR0x5eEhCV28" -O scangearmp-mg2400series-2.20-1-deb.tar.gz

# Extract
echo "Extracting archives..."
tar -xf cnijfilter-mg2400series-4.00-1-deb.tar.gz
tar -xf scangearmp-mg2400series-2.20-1-deb.tar.gz

echo "Installing printer driver..."
# Install Printer driver
cd cnijfilter-mg2400series-4.00-1-deb

# Connect printer and follow prompts
./install.sh

# Install scanner driver
echo "Installing scanner driver..."
cd ../scangearmp-mg2400series-2.20-1-deb
./install.sh

cd ../

echo "Cleaning up..."
rm -fr cnijfilter-mg2400series-4.00-1-deb.tar.gz scangearmp-mg2400series-2.20-1-deb.tar.gz scangearmp-mg2400series-2.20-1-deb/ cnijfilter-mg2400series-4.00-1-deb/
