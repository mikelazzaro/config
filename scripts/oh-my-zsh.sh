#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -d ~/.oh-my-zsh ]; then
    git -C ~/.oh-my-zsh pull
else
    git clone --force git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

#cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

cp $DIR/../dotfiles/.zshrc ~/.zshrc
