# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git aws docker asdf)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"

alias lsl="ls -1AF"
alias lss="ls -lhAF" 

function gmm() {
  git commit -m "$1"
}
alias gaa="git add ."
alias gs="git status"
alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glgg="git log --graph --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%an%C(reset)%C(bold yellow)%d%C(reset) %C(dim white)- %s%C(reset)' --all"

function gitNumLines() {
    git ls-files | grep $1 | xargs wc -l 
}

# Git ZMK Workspace
alias gazz="git add config/adv360.keymap; git add config/macros.dtsi" # failing 1 or both commands is ok

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
