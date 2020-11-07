export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
export EDITOR='vim'

export ZSH=$HOME/.oh-my-zsh
# zsh plugin ref: https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
plugins=(git npm osx docker brew postgres command-not-found z)
source $ZSH/oh-my-zsh.sh

source $(brew --prefix)/share/antigen/antigen.zsh
# Load the oh-my-zsh's library.
antigen use oh-my-zsh
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
# Load the theme.
# antigen theme therzka/zemoji
# antigen theme denysdovhan/spaceship-prompt
antigen theme sindresorhus/pure
# Tell Antigen that you're done.
antigen apply

# Aliases #
alias gas="git add . && git status";
