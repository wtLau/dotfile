## ZSh Configs
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Set name of the theme to load 
ZSH_THEME="agnoster"
# Update oh my zsh automatically without asking
zstyle ':omz:update' mode auto      
# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

## Plugins 
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# Sourcing zsh-vi-mode
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source $ZSH/oh-my-zsh.sh

## Python Env
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

## Utils
# Constants
DOCUMENTS=$HOME/Documents/

# Aliases
alias nv="nvim"
alias vscode="/opt/homebrew/bin/code"
alias doc=$DOCUMENTS
alias dotfile="~/.dotfiles/"

# Filepath
alias code="$HOME/Documents/Codebases/"
alias zshconfig="cd $dotfile && nv ./.zshrc"
alias nvconfig="cd ~/.config/nvim/lua/user && nv ."
alias ohmyzsh="nv ~/.oh-my-zsh"
alias notes="cd ~/Documents/notes/ && nv ."

## Mini Apps
# Weather
alias weather='curl wttr.in/Vancouver\?0nqF' #current, narrow, quiet, no Follow
# Cal
alias cal='cal -A 2'

# Starting Dir
cd $DOCUMENTS

# Broot
source /Users/blau/.config/broot/launcher/bash/br

