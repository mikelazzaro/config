#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root!"
    exit 1
fi

apt-get install -y git vim ctags zsh tree htop

read -r -p "Do you want to set zsh as the default shell? [y/N] " response
response=${response,,}    # tolower
if [[ $response =~ ^(yes|y)$ ]]; then
    chsh -s $(which zsh) mike
fi
    
