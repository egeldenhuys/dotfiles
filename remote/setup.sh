#!/bin/bash

# USAGE:
# ./setup.sh

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

$DIR/install-packages.sh
$DIR/install-terminfo.sh
$DIR/create-user.sh
