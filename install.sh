#!/bin/bash

########
# nvim #
########

# Uncommented because I am using custom community vim config

#mkdir -p "$XDG_CONFIG_HOME/nvim"
#mkdir -p "$XDG_CONFIG_HOME/nvim/undo"

#ln -sf "$DOTFILES/nvim/init.vim" "$XDG_CONFIG_HOME/nvim"

rm -rf "$XDG_CONFIG_HOME/X11"
ln -s "$DOTFILES/X11" "$XDG_CONFIG_HOME"

######
# i3 #
######

rm -rf "$XDG_CONFIG_HOME/i3"
ln -s "$DOTFILES/i3" "$XDG_CONFIG_HOME"


#######
# Zsh #
#######

mkdir -p "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/aliases" "$XDG_CONFIG_HOME/zsh/aliases"
rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES/zsh/external" "$XDG_CONFIG_HOME/zsh"

#########
# Fonts #
#########
mkdir -p "$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"

########
# tmux #
########
mkdir -p "/home/kopachke/.config/tmux"
ln -sf "$DOTFILES/tmux/tmux.conf" "/home/kopachke/.config/tmux/tmux.conf"
