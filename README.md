clone repo into ~

clone tmux plugin manager into root

`git clone https://github.com/tmux-plugins/tpm ~/dotfiles/root/.tmux/plugins/tpm`

symlink files to in ~

`ln -s ~/dotfiles/root/.* ~`

install brew

`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`

install brewfile packages

`brew bundle`

install oh my zsh

`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

if oh my zsh doesn't set zsh as default shell

`chsh -s $(which zsh)`

install tmux plugins

https://github.com/tmux-plugins/tpm

install dracula theme for terminal

`git clone https://github.com/dracula/terminal-app.git ~/dotfiles/themes`

import theme in terminal and set as default

https://draculatheme.com/terminal
