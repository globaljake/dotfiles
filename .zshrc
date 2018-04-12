export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=/Users/jakequattrocchi/.oh-my-zsh

ZSH_THEME="robbyrussell"
DEFAULT_USER="jakequattrocchi"
plugins=(git tmux heroku postgres)

export UPDATE_ZSH_DAYS=30
#ENABLE_CORRECTION="true"
#DISABLE_UNTRACKED_FILES_DIRTY="true"

source $ZSH/oh-my-zsh.sh

export GOPATH="$HOME/projects"
export EDITOR=nvim
export ANDROID_HOME=/Users/jakequattrocchi/Library/Android/sdk
export GCLOUD_HOME=/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin
export PATH=${PATH}:/usr/local/sbin:/usr/local/bin:/usr/local/tfs:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$GCLOUD_HOME
#source "$HOME/.local/share/nvim/plugged/gruvbox/gruvbox_256palette.sh"
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
PATH=/usr/local/bin:/usr/local/tfs:$PATH;
export PATH="/usr/local/sbin:$PATH"

# Git #
alias gas="git add . && git status";
alias gcm="git commit -m ";
alias gpr="git pull --rebase";
alias gpo="git push origin";
alias gs="git status";
alias gc="git commit";
alias gst="git stash save";
alias gstp="git stash pop";
alias git-oops="git reset --soft HEAD~1";
alias git-delete-all-branches="git branch | grep -v '*' | xargs git branch -D";
alias gc-="git checkout -";
alias grm="git rebase master";
alias get="git checkout";
# Halogen #
alias hal="cd $HAL_HOME";
export HAL_HOME=~/@/omicron/projects/halogen-web

# General #
alias vim="nvim";
alias edit-vim="vim ~/.config/nvim/general.vimrc";
alias edit-zsh="vim ~/.zshrc";
alias top="htop";
alias brewup="brew update; brew upgrade; brew prune; brew cleanup; brew doctor";
alias o="open .";
alias a="atom .";
alias cl="clear && printf '\e[3J'";
alias ip=myip;
alias @="cd ~/@";
alias temp="cd ~/@/temp";
#alias dns-flush-cache=sudo dscacheutil -flushcache;
alias generate-ssh-key=ssh-keygen -t rsa -b 4069 -C "jake.quattrocchi@gmail.com";

function myip {
  echo IP \(Private\): $(ipconfig getifaddr en0);
  echo IP \(Public\): $(curl -s http://ipecho.net/plain; echo);
}

function mkdir
{
  command mkdir $1 && cd $1
}

forest_fire() {
  echo "This deletes all of the following branches:" && \
  git branch --list $1\*
  confirm && git branch --list $1\* | xargs git branch -D
}

confirm() {
  read -r -p "${1:-Are you sure? [y/N]} " response
  case $response in
    [yY][eE][sS]|[yY])
      true
      ;;
    *)
      false
      ;;
  esac
}


source $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
source $(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
