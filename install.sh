#!/bin/bash

mkdir $HOME/.config/nvim
INIT_FILE=$HOME/.config/nvim/init.vim

if [ ! -f "$INIT_FILE" ]; then
    echo source $HOME/Documents/Dotfile_neovim/init.vim > $INIT_FILE
fi

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
