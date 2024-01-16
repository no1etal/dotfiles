# Enable AUTO_PARAM_SLASH
setopt AUTO_PARAM_SLASH

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
