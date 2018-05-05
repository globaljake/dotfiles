export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# DEFAULT_USER="jakequattrocchi"

export UPDATE_ZSH_DAYS=30
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git tmux)
source $ZSH/oh-my-zsh.sh

# User config  #
export EDITOR=nvim

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Git #
alias get="git checkout";
alias gas="git add . && git status";
alias gcm="git commit -m ";
alias gs="git status";
alias gst="git stash save";
alias gstp="git stash pop";
alias git-branch-delete-all="git branch | grep -v '*' | xargs git branch -D";

# General #
alias vim="nvim";
alias @="cd ~/@";
alias temp="cd ~/@/temp";
alias brewup="brew update; brew upgrade; brew prune; brew cleanup; brew doctor";
alias o="open .";
# alias dns-flush-cache=sudo dscacheutil -flushcache;
# alias generate-ssh-key=ssh-keygen -t rsa -b 4069 -C "jake.quattrocchi@gmail.com";

function ip {
  echo IP \(Private\): $(ipconfig getifaddr en0);
  echo IP \(Public\): $(curl -s http://ipecho.net/plain; echo);
}

function mkdir
{
  command mkdir $1 && cd $1
}
