## ZSh Configs
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Set name of the theme to load 
ZSH_THEME="agnoster"
# Update oh my zsh automatically without asking
zstyle ':omz:update' mode auto      
# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13
# Remove user and host names
export DEFAULT_USER=$USER

## Plugins 
## plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Sourcing ZSH zsh-autosuggestions
source $(brew --prefix)/opt/zsh-autosuggestions/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Sourcing ZSH zsh-autosuggestions
source $(brew --prefix)/opt/zsh-syntax-highlighting/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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
# ZSH Config
alias zc="cd $dotfile && nv ./.zshrc"
# NeoVim Config
alias nc="cd ~/.config/nvim/lua && nv ."
alias ohmyzsh="nv ~/.oh-my-zsh"
alias notes="cd ~/Documents/wtlau-obsidian/ && nv ."

# Arcteryx
alias arc="cd ~/Documents/Codebases/arc/"
alias core="cd ~/Documents/Codebases/arc/core-ui/"
alias logs="cd ~/Documents/Codebases/arc/logs/"
alias arcnpm= "source ~/.aws/switch-aws-profile.sh prod"

## Mini Apps
# Weather
alias weather='curl wttr.in/Vancouver\' #current, narrow, quiet, no Follow
# Cal
alias cal='cal -A 2'

# Report Weather
# weather
# Starting Dir
#cd $DOCUMENTS

# Bitbucket Arcteryx
eval $(ssh-agent)
