#!/bin/bash
source $(dirname $0)/.init.sh

while read repo; do
     sudo apt-add-repository-y $repo
done < $CONFIG_APT_DIR/repos.txt

while read pkg; do
    sudo apt install -y $pkg
done < $CONFIG_APT_DIR/pkgs.txt
