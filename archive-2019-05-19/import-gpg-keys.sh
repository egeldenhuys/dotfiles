#!/bin/bash

echo "Fetching and importing public gpg keys..."

curl https://gist.githubusercontent.com/egeldenhuys/4a5a422d397db3f0b1f67d3396453d6a/raw/e393b53fcdf35ce52be6ca657c191e6339e3599e/evert-gpg.pub | gpg2 --import
echo "FB8E3E4AAA0219470EB7B9F5C2B85439F6A6F915:6:" | gpg2 --import-ownertrust

gpg2 --card-status
