source "$XDG_CONFIG_HOME/zsh/aliases"

autoload -U compinit; compinit

export OPENAI_API_KEY="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"

# Autocomplete hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh

fpath=($ZDOTDIR/external $fpath)

autoload -Uz prompt_purification_setup; prompt_purification_setup

## Zsh Directory Stack by Phantas0s:

# Push the current directory visited on to the stack.
setopt AUTO_PUSHD
# Do not store duplicate directories in the stack.
setopt PUSHD_IGNORE_DUPS
# Do not print the directory stack after using pushd or popd.
setopt PUSHD_SILENT

bindkey -v
export KEYTIMEOUT=1

autoload -Uz cursor_mode && cursor_mode
# Vim Mapping For Completion
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
# Editing Commands In Neovim
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# Plugins

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/dotfiles/zsh/external/bd.zsh

# Custom Scripts

source $DOTFILES/zsh/scripts.sh

# fzf

if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi

# i3 startup configuration

if [ "$(tty)" = "/dev/tty1" ];
then
pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi
