# For dotfiles
export XDG_CONFIG_HOME="$HOME/.config"
# For user specific data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
# For user cached files
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

export EDITOR="nvim"
export VISUAL="nvim"

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# History filepath
export HISTFILE="$ZDOTDIR/.zhistory"
# Maximum events for internal history
export HISTSIZE=20000
# Maximum events in history file
export SAVEHIST=20000

export DOTFILES="$HOME/dotfiles"

# fzf and ripgrep
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Web Browser
export BROWSER="firefox"

# Command Line Browser
export BROWSERCLI="links"

# PATHS
export PATH=$PATH:/home/kopachke/.spicetify
export PATH=$PATH:/home/kopachke/.local/bin
export PATH=$PATH:/home/kopachke/Apps
export PATH=$PATH:/home/kopachke/go/bin/

