#!/bin/bash
SCRIPTPATH="$(
    cd "$(dirname "$0")" >/dev/null 2>&1 || exit
    pwd -P
)"
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root"
    exit 1
fi
TARGET="/usr/local/bin/pkgb"
OLDTARGET="/usr/local/bin/fzf-dpkg"

if [[ -L $OLDTARGET ]]; then
    echo "Removing old version $OLDTARGET"
    rm $OLDTARGET
fi

if [[ -L $TARGET ]]; then
    echo "Removing old version $TARGET"
    rm $TARGET
fi

echo "Install $TARGET"
chmod +x "$SCRIPTPATH/pkgb"
ln -s "$SCRIPTPATH/pkgb" "$TARGET"
