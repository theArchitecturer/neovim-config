#!/bin/bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [ "$1" = "ub" ]; then 
    sudo apt install python3-pip nodejs xclip 
elif [ "$1" = "ar" ]; then
    sudo pacman -S python3-pip nodejs
fi
