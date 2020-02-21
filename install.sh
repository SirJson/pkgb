#!/bin/bash
ORIGIN=$PWD
SCRIPTPATH="$(
    cd "$(dirname "$0")" >/dev/null 2>&1 || exit
    pwd -P
)"
echo "Install for every user"
if [[ $EUID -ne 0 ]]; then
     echo "This script must be run as root" 
     exit 1
fi
chmod +x "$SCRIPTPATH/fzf-dpkg"
cp -v "$SCRIPTPATH/fzf-dpkg" /usr/local/bin
