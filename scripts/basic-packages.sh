#!/bin/bash

set -e

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root!"
    exit 1
fi

echo -e "\n\nSetting up basic environment"
echo "============================"

echo "Installing packages..."
apt-get install -y git vim ctags zsh tree htop python python-dev python-setuptools > /dev/null

echo "Installing pip..."
easy_install pip > /dev/null

echo "Installing python packages..."
pip install virtualenvwrapper > /dev/null

echo -e "Checking shell...\n"
read -r -p "Do you want to set zsh as the default shell? [y/N] " response
response=${response,,}    # tolower
if [[ $response =~ ^(yes|y)$ ]]; then
#    chsh $(which zsh)
    usermod -s $(which zsh) mike > /dev/null
fi



