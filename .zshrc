## ZSh Configs
export ZSH="$HOME/.oh-my-zsh"
# Theme
# ZSH_THEME="agnoster"
ZSH_THEME="avit"
# ZSH_THEME="dst"
# ZSH_THEME="robbyrussell"
zstyle ':omz:update' frequency 30 # Update every 30 days

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
alias zc="cd ~/dotfile && nv .zshrc"

# NeoVim Config
alias nc="cd ~/.config/nvim/lua && nv ."
alias ohmyzsh="nv ~/.oh-my-zsh"

## Notes
# alias notes="cd ~/Documents/wtlau-obsidian/ && nv ."
# alias notesarc="cd ~/Documents/wtlau-obsidian/notes/work/arc/ && nv ."
#
# # Arcteryx
# alias arc="cd ~/Documents/Codebases/arc/"
# alias core="cd ~/Documents/Codebases/arc/core-ui/"
# alias content="cd ~/Documents/Codebases/arc/content-pages/"
# alias logs="cd ~/Documents/Codebases/arc/logs/"
# alias arcnpm='eval "source ~/.aws/switch-aws-profile.sh prod"'

## Personalized CLI
# Define aliases in a simple format (array of key-value pairs)
ALIASES=(
    "notes:cd ~/Documents/wtlau-obsidian/ && nv main.md"
    "arc:cd ~/Documents/Codebases/arc/"
    "core:cd ~/Documents/Codebases/arc/core-ui/ && nv ."
    "nav:cd ~/Documents/Codebases/arc/arcteryx-navigation/ && nv ."
    "cms:cd ~/Documents/Codebases/arc/sanity-cms/ && nv ."
    "dam:cd ~/Documents/Codebases/arc/dam-connector/ && nv ."
    "content:cd ~/Documents/Codebases/arc/content-pages/ && nv ."
    "swag:cd ~/Documents/Codebases/arc/web-api-gateway/ && nv ."
    "arcnpm:eval \"source ~/.aws/switch-aws-profile.sh prod\""
    "cal: cal -A 2" #Calendar
)

# Loop through the array and create aliases dynamically
for entry in "${ALIASES[@]}"; do
    KEY="${entry%%:*}"  # Extract command name
    VALUE="${entry#*:}"  # Extract command value
    alias "$KEY"="$VALUE"
done

# Define wt function
# wt() {
#     echo "Brian's commands:"
#     for entry in "${ALIASES[@]}"; do
#         KEY="${entry%%:*}"
#         VALUE="${entry#*:}"
#         echo "  $KEY "
#     done
# }

echo "Type 'wt' to view my own cli :)"

# Bitbucket Arcteryx
if ! pgrep -u "$USER" ssh-agent >/dev/null; then
  eval $(ssh-agent -s)
fi

# Lazy-load nvm
nvm_lazy_load() {
  unset -f nvm node npm npx
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}

for cmd in nvm node npm npx; do
  eval "$cmd() { nvm_lazy_load; $cmd \"\$@\"; }"
done

## Plugins 
plugins=(zsh-autosuggestions zsh-syntax-highlighting)
