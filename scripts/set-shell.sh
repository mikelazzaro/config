#!/bin/bash

read -r -p "Do you want to set zsh as the default shell? [y/N] " response
response=${response,,}    # tolower
if [[ $response =~ ^(yes|y)$ ]]; then
    usermod -s $(which zsh) mike
fi
    

