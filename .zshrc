## ZSh Configs
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Set name of the theme to load 
ZSH_THEME="agnoster"
#ZSH_THEME="robbyrussell"
# Update oh my zsh automatically without asking
zstyle ':omz:update' mode auto      
# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13
# Remove user and host names
export DEFAULT_USER=$USER

## Plugins 
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

## Load Oh-My-Zsh
source $ZSH/oh-my-zsh.sh


## Utils
# Constants
DOCUMENTS=$HOME/Documents/

# Aliases
alias nv="nvim"
alias vscode="/opt/homebrew/bin/code"
alias doc=$DOCUMENTS

# Filepath
alias code="$HOME/Documents/Codebases/"
# ZSH Config
export dotfile=~/dotfile  # Make sure to export the variable
alias zc="nvim $dotfile/.zshrc"

# NeoVim Config
alias nc="cd ~/.config/nvim/lua && nv ."
alias ohmyzsh="nv ~/.oh-my-zsh"
alias notes="cd ~/Documents/wtlau-obsidian/ && nv ."

# Arcteryx
alias arc="cd ~/Documents/Codebases/arc/"
alias core="cd ~/Documents/Codebases/arc/core-ui/"
alias content="cd ~/Documents/Codebases/arc/content-pages/"
alias logs="cd ~/Documents/Codebases/arc/logs/"
alias arcnpm='eval "source ~/.aws/switch-aws-profile.sh prod"'

## Mini Apps
# Weather
# alias weather='curl wttr.in/Vancouver\' #current, narrow, quiet, no Follow
# Cal
alias cal='cal -A 2'

# Report Weather
# weather
# Starting Dir
#cd $DOCUMENTS

# Bitbucket Arcteryx
if ! pgrep -u "$USER" ssh-agent >/dev/null; then
  eval $(ssh-agent -s)
fi
