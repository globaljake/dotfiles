## dotfiles

Configuration for a new MacOS build.

1. Clone repo into `~`
2. Symlink /.config to ~
- `ln -sf ~/dotfiles/.config/.* ~`
3. Run install.sh
- `chmod +x ~/dotfiles/install.sh && ~/dotfiles/install.sh`

### Themes
Install dracula theme in terminal,chrome,insomnia,slack,vscode and set as default
- https://draculatheme.com
- `git clone https://github.com/dracula/terminal-app.git ~/.themes/dracula/terminal`
- `git clone https://github.com/dracula/insomnia.git ~/.themes/dracula/insomnia` 

### Quick Notes
- alter postgres owner
- `psql -U postgres -c "ALTER DATABASE postgres OWNER TO postgres;"`
- Remove brews initial initdb to reinit with postgres as user
- `rm -rf /usr/local/var/postgres`
- `initdb --locale=C -E UTF-8 $(brew --prefix)/var/postgres -U postgres`
