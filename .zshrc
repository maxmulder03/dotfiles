# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export EDITOR=vim

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git aws docker asdf)

source $ZSH/oh-my-zsh.sh

alias eixt="exit"

alias vim="nvim"
alias vimdot="cd ~/dotfiles/ && nvim . && cd -"
alias vimdoc="cd ~/Docs/ && nvim . && cd -"
alias notes="cd ~/notes && nvim . && cd -"
alias commands="cd ~/Docs/ && nvim commands.md && cd -"

# LS Shortcuts
alias lsl="ls -1AF"
alias lslt="ls -lt"
alias lss="ls -lhAF" 
#Easy Git
alias gaa="git add ."
alias gs="git status"
# Pretty Git logging
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glgg="git log --graph --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%an%C(reset)%C(bold yellow)%d%C(reset) %C(dim white)- %s%C(reset)' --all"

alias gitdump="find . -type f -not -path \"./.git/*\" -exec echo \"FILE: {}\" \; -exec cat {} \; > git_files_and_contents.txt"

# Java
alias grb="./gradlew build"
alias grbr="./gradlew build && ./gradlew bootRun"


function gitNumLines() {
    git ls-files | grep $1 | xargs wc -l 
}

function gmm() {
  git commit -m "$1"
}

# Git ZMK Workspace
alias gazz="git add config/adv360.keymap; git add config/macros.dtsi" # failing 1 or both commands is ok

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
