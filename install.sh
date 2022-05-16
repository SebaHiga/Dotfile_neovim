#!/bin/bash

mkdir $HOME/.config/nvim
INIT_FILE=$HOME/.config/nvim/init.vim

echo -e "let g:neovim_dotfiles = '$(pwd)'\nsource $(pwd)/init.vim" > $INIT_FILE

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
