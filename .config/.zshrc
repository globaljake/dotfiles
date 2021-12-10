export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
export EDITOR='vim'

# asdf
. "$(brew --prefix asdf)/libexec/asdf.sh"

# antigen and oh-my-zsh
source $(brew --prefix)/share/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle macos
antigen bundle git
antigen bundle brew
antigen bundle postgres
antigen bundle command-not-found
antigen bundle z
antigen bundle web-search
antigen bundle dirhistory
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
# antigen theme therzka/zemoji
# antigen theme denysdovhan/spaceship-prompt
antigen theme sindresorhus/pure
antigen apply

# direnv
eval "$(direnv hook zsh)"

# aliases
alias gas="git add . && git status";
