#!/bin/sh -v

# Install Homebrew
export PATH=/opt/homebrew/bin:$PATH
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install applications in from Brewfile
brew bundle --global --no-lock

# Source .zshrc file
. ~/.zshrc

# Set up asdf to manage languages and databases
asdf plugin add elixir
asdf plugin add elm
asdf plugin add erlang
asdf plugin add nodejs
asdf plugin add ruby
asdf plugin add postgres

# Install asdf nodejs package dependencies
brew install gpg gawk 

# Install asdf postgres package dependencies
brew install gcc readline zlib curl ossp-uuid icu4c openssl

# Install asdf packages from .tool-versions
asdf install

# Install global npm packages
npm i -g elm-format elm-test

# Source .tmux.conf to load plugins
tmux
tmux source-file ~/.tmux.conf
tmux kill-session