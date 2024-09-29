#!/bin/bash

########
# nvim #
########

mkdir -p "$XDG_CONFIG_HOME/nvim"
mkdir -p "$XDG_CONFIG_HOME/nvim/undo"

ln -sf "$DOTFILES/nvim/init.vim" "$XDG_CONFIG_HOME/nvim"

#rm -rf "$XDG_CONFIG_HOME/X11"
#ln -s "$DOTFILES/X11" "$XDG_CONFIG_HOME"

# install neovim plugin manager
[ ! -f "$DOTFILES/nvim/autoload/plug.vim" ] \

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir -p "$XDG_CONFIG_HOME/nvim/autoload"
ln -sf "$DOTFILES/nvim/autoload/plug.vim" "$XDG_CONFIG_HOME/nvim/autoload/plug.vim"

# Install (or update) all the plugins
nvim --noplugin +PlugUpdate +qa

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
ln -sf "$DOTFILES/tmux/tmux.conf" "$XDG_CONFIG_HOME/tmux/tmux.conf"

#[ ! -d "~/.config/tmux/plugins" ] \     
#&& git clone https://github.com/tmux-plugins/tpm \
#"~/.config/tmux/plugins/tpm"
# When using the ~ symbol for the home directory, you should not enclose it in double quotes because it won't expand correctly. Here's the corrected command:

[ ! -d ~/.config/tmux/plugins ] && git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

# install neovim plugin manager
[ ! -f "$DOTFILES/nvim/autoload/plug.vim" ] \
    && curl -fLo "$DOTFILES/nvim/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p "$XDG_CONFIG_HOME/nvim/autoload"
ln -sf "$DOTFILES/nvim/autoload/plug.vim" "$XDG_CONFIG_HOME/nvim/autoload/plug.vim"

########
#  X  ##      Base from https://github.com/ChristianChiarulli/Machfiles/blob/master/x/.xprofile
########

#ln -sf "$DOTFILES/X11/.xprofile" "$HOME"

##########
# Ranger #
##########

mkdir -p "$XDG_CONFIG_HOME/ranger"
rm -rf "$XDG_CONFIG_HOME/ranger"
ln -s "$DOTFILES/ranger/" "$XDG_CONFIG_HOME"

#########
# yazi ##
# #######

mkdir -p "$XDG_CONFIG_HOME/yazi"

rm -rf "$XDG_CONFIG_HOME/yazi"
ln -s "$DOTFILES/yazi" "$XDG_CONFIG_HOME"

#########
# kitty #
#########

#mkdir -p "$XDG_CONFIG_HOME/kitty"


rm -rf "$XDG_CONFIG_HOME/kitty"
ln -s "$DOTFILES/kitty" "$XDG_CONFIG_HOME"
 
#########
# hypr ##
#########

#mkdir -p "$XDG_CONFIG_HOME/hypr"

rm -rf "$XDG_CONFIG_HOME/hypr"
ln -s "$DOTFILES/hypr" "$XDG_CONFIG_HOME"

##################
## alacritty   ###
##################

#mkdir -p "$XDG_CONFIG_HOME/alacritty/"

rm -rf "$XDG_CONFIG_HOME/alacritty"
ln -s "$DOTFILES/alacritty" "$XDG_CONFIG_HOME"

##########
# btop ###
##########

#mkdir -p "$XDG_CONFIG_HOME/btop"

#rm -rf "$XDG_CONFIG_HOME/btop"
ln -sf "$DOTFILES/btop" "$XDG_CONFIG_HOME"

########
# mpd ##
########
# mpd database and logs should be in ~/.local/share/mpd but I can't find it now. Maybe I deleted it?
#
rm -rf "$XDG_CONFIG_HOME/mpd"
ln -s "$DOTFILES/mpd" "$XDG_CONFIG_HOME/mpd"
#
#
#
#############
# ncmpcpp  ##
#############
# Optimised for home network and hpserver

#mkdir -p "$HOME/.ncmpcpp"

rm -rf "$HOME/.ncmpcpp/"
ln -s "$DOTFILES/.ncmpcpp" "$HOME"

##############
# waybar   ###
##############

mkdir -p "$XDG_CONFIG_HOME/waybar"

rm -rf "XDG_CONFIG_HOME/waybar"
ln -s "$DOTFILES/waybar/" "$XDG_CONFIG_HOME"

############
#   wofi ###
############

mkdir -p "$XDG_CONFIG_HOME/wofi"
rm -rf "$XDG_CONFIG_HOME/wofi"

ln -s "$DOTFILES/wofi" "$XDG_CONFIG_HOME"

################
#    zathura ###
################

#mkdir -p "$XDG_CONFIG_HOME/zathura"

rm -rf "$XDG_CONFIG_HOME/zathura"
ln -s "$DOTFILES/zathura/" "$XDG_CONFIG_HOME"

################
### Castero ####
################
 
rm -rf "$XDG_CONFIG_HOME/castero"
ln -s "$DOTFILES/castero" "$XDG_CONFIG_HOME"

################
#### Zinger ####
################

rm -rf "$XDG_CONFIG_HOME/zinger"
ln -s "$DOTFILES/zinger" "$XDG_CONFIG_HOME"

###############
### tmuxp #####
###############

rm -rf "$XDG_CONFIG_HOME/tmuxp"
ln -s "$DOTFILES/tmuxp" "$XDG_CONFIG_HOME"

####################
### qutebrowser ####
####################

rm -rf "$XDG_CONFIG_HOME/qutebrowser"
git clone https://github.com/catppuccin/qutebrowser.git ~/.config/qutebrowser/catppuccin
ln -s "$DOTFILES/qutebrowser" "$XDG_CONFIG_HOME"

###################
### newsboat ######
###################

rm -rf "XDG_CONFIG_HOME/newsboat"
ln -s "$DOTFILES/newsboat/" "$XDG_CONFIG_HOME"

###################
### newsraft ######
###################

rm -rf "XDG_CONFIG_HOME/newsraft"
ln -s "$DOTFILES/newsraft" "$XDG_CONFIG_HOME"

####################
### starship #######
####################

rm -rf "XDG_CONFIG_HOME/starship.toml"
ln -s "$DOTFILES/starship.toml" "$XDG_CONFIG_HOME"

##################
## waypaper ######
##################

# Check if waypaper is installed
if ! pacman -Qi waypaper &> /dev/null; then
    echo "Installing waypaper..."
    sudo pacman -S waypaper
    echo "waypaper installed successfully."
else
    echo "waypaper is already installed."
fi

