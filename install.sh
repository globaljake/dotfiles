#!/bin/sh -v

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install applications in Brewfile
brew bundle --no-lock

# Install languages/databases with asdf
brew install gpg gawk
asdf plugin add elixir
asdf plugin add elm
asdf plugin add erlang
asdf plugin add nodejs
asdf plugin add ruby
asdf plugin add postgres
asdf install

# Install global npm packages
npm i -g elm-format elm-test