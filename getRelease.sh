#!/bin/bash 

# get the current directory
PREV="$(pwd)"

# get the directory of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR/../
git describe --tags | cut -d "-" -f 1 

cd $PREV

