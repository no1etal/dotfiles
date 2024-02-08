source "$XDG_CONFIG_HOME/zsh/aliases"
source "/home/kopachke/.gpt_api"
# Enable AUTO_PARAM_SLASH
setopt AUTO_PARAM_SLASH
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
/home/kopachke/dotfiles/i3/scripts/print256colours.sh
neofetch
# Disable CASE_GLOB
unsetopt CASE_GLOB

autoload -U compinit; compinit

# Autocomplete hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh

fpath=($ZDOTDIR/external $fpath)

# Push the current directory visited on to the stack.
setopt AUTO_PUSHD
# Do not store duplicate directories in the stack.
setopt PUSHD_IGNORE_DUPS
# Do not print the directory stack after using pushd or popd.
setopt PUSHD_SILENT

if [ $(command -v "fzf") ]; then
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
fi

if [ "$(tty)" = "/dev/tty1" ];
then
pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

#plug "zsh-users/zsh-autosuggestions"
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments

#zsh_add_plugin "zsh-users/zsh-autosuggestions"

#ftmuxp

export PATH=$PATH:/home/kopachke/.spicetify
