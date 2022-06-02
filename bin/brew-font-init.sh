#!/bin/bash
source $(dirname $0)/.init.sh

while read pkg; do
    brew install --cask $pkg
done < $CONFIG_HOMEBREW_DIR/fonts.txt
