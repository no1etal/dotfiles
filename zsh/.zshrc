### SOURCE

source "$XDG_CONFIG_HOME/zsh/aliases"
source "/home/kopachke/.gpt_api"
source "/home/kopachke/dotfiles/zsh/fzf"
source "/home/kopachke/dotfiles/zsh/scripts.sh"


# Autoload and source fzf-tab
autoload -U compinit; compinit
source ~/git/fzf-tab.plugin.zsh

# Enable AUTO_PARAM_SLASH
setopt AUTO_PARAM_SLASH

/home/kopachke/dotfiles/i3/scripts/print256colours.sh 

echo

neofetch

echo "Hello Dragan. Shall we play a game?" 
echo

# Disable CASE_GLOB
unsetopt CASE_GLOB

autoload -U compinit; compinit
#  what is printed in front of the cursor:
PS1='%F{green}λ%f '
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
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
if [ "$(tty)" = "/dev/tty1" ];
then
pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

#plug "zsh-users/zsh-autosuggestions"
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments

#zsh_add_plugin "zsh-users/zsh-autosuggestions"

#ftmuxp
#
# Yazi setting to change the current working directory when exiting Yazi.
function ya() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

########## EXPORT
export PATH=$PATH:/home/kopachke/.spicetify
export PATH=$PATH:/home/kopachke/.local/bin
export PATH=$PATH:/home/kopachke/Apps

## >>> conda initialize >>>
## !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/usr/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
#        . "/usr/etc/profile.d/conda.sh"
#    else
#        export PATH="/usr/bin:$PATH"
#    fi
#fi
#unset __conda_setup
## <<< conda initialize <<<
#
#####


# Added zoxide to zsh
eval "$(zoxide init zsh)"
