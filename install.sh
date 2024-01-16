#!/bin/bash

########
# nvim #
########

# Uncommented because I am using custom community vim config

#mkdir -p "$HOME/.config/nvim"
#mkdir -p "$HOME/.config/nvim/undo"

#ln -sf "$HOME/dotfiles/nvim/init.vim" "$HOME/.config/nvim"

rm -rf "$HOME/.config/X11"
ln -s "$HOME/dotfiles/X11" "$HOME/.config"
