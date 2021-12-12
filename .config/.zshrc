export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/opt/homebrew/bin:$PATH
export EDITOR="vim"
export TERM="xterm-256color"

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
# antigen bundle therzka/zemoji
# antigen bundle sindresorhus/pure
antigen bundle denysdovhan/spaceship-prompt
antigen apply

# direnv
eval "$(direnv hook zsh)"

# instantly open a tmux session
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# aliases
alias gas="git add . && git status";