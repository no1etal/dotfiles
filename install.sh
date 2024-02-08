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

#[ ! -d "~/.config/tmux/plugins" ] \     
#&& git clone https://github.com/tmux-plugins/tpm \
#"~/.config/tmux/plugins/tpm"
# When using the ~ symbol for the home directory, you should not enclose it in double quotes because it won't expand correctly. Here's the corrected command:

[ ! -d ~/.config/tmux/plugins ] && git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm


########
#  X  ##      Base from https://github.com/ChristianChiarulli/Machfiles/blob/master/x/.xprofile
########

ln -sf "$DOTFILES/X11/.xprofile" "$HOME"

##########
# Ranger #
##########

rm -rf "$XDG_CONFIG_HOME/ranger/"
ln -s "$DOTFILES/ranger/" "$XDG_CONFIG_HOME/ranger/"

#########
# yazi ##
# #######

rm -rf "$XDG_CONFIG_HOME/yazi"
ln -s "$DOTFILES/yazi"

#########
# kitty #
#########

rm -rf "$XDG_CONFIG_HOME/kitty"
ln -s "$DOTFILES/kitty/"

#########
# hypr ##
#########

rm -rf "$XDG_CONFIG_HOME/hypr"
ln -s "$DOTFILES/hypr"

##################
## alacritty   ###
##################

rm -rf "$XDG_CONFIG_HOME/alacritty"
ln -s "$DOTFILES/alacritty"

##########
# btop ###
##########

rm -rf "$XDG_CONFIG_HOME/btop"
ln -s "$DOTFILES/btop"

########
# mpd ##
########

rm -rf "$XDG_CONFIG_HOME/mpd"
ln -s "$DOTFILES/mpd"

#############
# ncmpcpp  ##
#############
# Optimised for home network and hpserver

rm -rf "$XDG_CONFIG_HOME/ncmpcpp/"
ln -s "$DOTFILES/ncmpcpp"

##############
# waybar   ###
##############

rm -rf "XDG_CONFIG_HOME/waybar"
ln -s "$DOTFILES/waybar/" "$XDG_CONFIG_HOME/waybar/"

############
#   wofi ###
############

rm -rf "$XDG_CONFIG_HOME/wofi/"
ln -s "$DOTFILES/wofi/" "$XDG_CONFIG_HOME/wofi"

################
#    zathura ###
################

rm -rf "$XDG_CONFIG_HOME/zathura/"
ln -s "$DOTFILES/zathura/" "$XDG_CONFIG_HOME/zathura"
