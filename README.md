## dotfiles

Configuration for a new MacOS build.

### Download
1. Clone repo into `~`
2. Install brew
- `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`
3. Install brewfile packages
- `brew bundle`
4. Install oh my zsh
- `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- if oh my zsh doesn't set zsh as default shell `chsh -s $(which zsh)`
5. Clone tmux plugin manager into repo's configs dir
- `git clone https://github.com/tmux-plugins/tpm ~/dotfiles/configs/.tmux/plugins/tpm`
6. Install dracula theme for terminal and insomnia
- `git clone https://github.com/dracula/terminal-app.git ~/dotfiles/themes/terminal`
- `git clone https://github.com/dracula/insomnia.git ~/dotfiles/themes/insomnia`


### Configure
1. Symlink configs to ~
- `ln -sf ~/dotfiles/configs/.* ~`
2. Install global npm pacakges
- `npm i -g elm-format elm-test`
3. Run tmux install plugins
- Enter a tmux session and press `prefix + I` (capital i)
- https://github.com/tmux-plugins/tpm
4. Install dracula theme in terminal,chrome,insomnia,slack,vscode and set as default
- https://draculatheme.com
