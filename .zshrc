export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=~/.oh-my-zsh

ZSH_THEME="robbyrussell"
DEFAULT_USER="jakequattrocchi"
plugins=(git tmux docker postgres)

export UPDATE_ZSH_DAYS=30
#ENABLE_CORRECTION="true"
#DISABLE_UNTRACKED_FILES_DIRTY="true"

source $ZSH/oh-my-zsh.sh

export GOPATH="$HOME/projects"
export EDITOR=nvim
#source "$HOME/.local/share/nvim/plugged/gruvbox/gruvbox_256palette.sh"

export PATH="/usr/local/sbin:$PATH"

# Git #
alias get="git checkout";
alias gs="git status";
alias gas="git add . && git status";
alias gcm="git commit -m ";
alias gpr="git pull --rebase";
alias gpo="git push origin";
alias gst="git stash save";
alias gstp="git stash pop";
alias git-branch-delete-all="git branch | grep -v '*' | xargs git branch -D";
# Halogen #
alias hal="cd ~/@/omicron/projects/halogen-web";

# General #
alias vim="nvim";
alias brewup="brew update; brew upgrade; brew prune; brew cleanup; brew doctor";
alias cl="clear && printf '\e[3J'";
alias @="cd ~/@";
alias temp="cd ~/@/temp";
#alias dns-flush-cache=sudo dscacheutil -flushcache;
alias generate-ssh-key=ssh-keygen -t rsa -b 4069 -C "jake.quattrocchi@gmail.com";

function myip {
  echo IP \(Private\): $(ipconfig getifaddr en0);
  echo IP \(Public\): $(curl -s http://ipecho.net/plain; echo);
}
