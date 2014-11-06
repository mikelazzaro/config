#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Clone (or update) the oh-my-zsh repo..."
if [ -d ~/.oh-my-zsh ]; then
    git -C ~/.oh-my-zsh pull
else
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh > /dev/null
fi

REPO_DIR=~/repos/powerline-fonts
echo "Install the powerline fonts..."
if [ -d $REPO_DIR ]; then
    git -C $REPO_DIR pull
else
    git clone git@github.com:Lokaltog/powerline-fonts.git $REPO_DIR > /dev/null
fi

$REPO_DIR/install.sh > /dev/null


echo "Get my standard .zshrc file..."
cp $DIR/../dotfiles/.zshrc ~/.zshrc
