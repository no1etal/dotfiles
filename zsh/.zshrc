# Enable AUTO_PARAM_SLASH
setopt AUTO_PARAM_SLASH

# Disable CASE_GLOB
unsetopt CASE_GLOB

autoload -U compinit; compinit

# Autocomplete hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh

fpath=($ZDOTDIR/external $fpath)
