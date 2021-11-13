#!/bin/bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source ~/.bashrc
nvm install --lts

if [ "$1" = "ub" ]; then 
    sudo apt install python3-pip nodejs xclip fonts-powerline
elif [ "$1" = "ar" ]; then
    sudo pacman -S python3-pip nodejs
fi
