#!/bin/bash
source $(dirname $0)/.init.sh

while read tap; do
    brew tap $tap
done < $CONFIG_HOMEBREW_DIR/taps.txt

while read pkg; do
    brew install $pkg
done < $CONFIG_HOMEBREW_DIR/pkgs.txt

brew link openssl --force
