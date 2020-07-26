## dotfiles

Configuration for a new MacOS build.

### Download
1. Clone repo into `~`
2. Clone tmux plugin manager into repo's root dir
- `git clone https://github.com/tmux-plugins/tpm ~/dotfiles/root/.tmux/plugins/tpm`
3. Install brew
- `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`
4. Install brewfile packages
- `brew bundle`
5. Install oh my zsh
- `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- if oh my zsh doesn't set zsh as default shell `chsh -s $(which zsh)`
6. Install dracula theme for terminal
- `git clone https://github.com/dracula/terminal-app.git ~/dotfiles/themes`


### Configure
1. Symlink files to in ~
- `ln -s ~/dotfiles/root/.* ~`
2. Run tmux install plugins
- Enter a tmux session and press `prefix + shift + i`
- https://github.com/tmux-plugins/tpm
3. Import dracula theme in terminal and set as default
- https://draculatheme.com/terminal
