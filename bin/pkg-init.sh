#!/bin/bash
source $(dirname $0)/.init.sh

while read pkg; do
    pkg install $pkg
done < $CONFIG_PKG_DIR/pkgs.txt
