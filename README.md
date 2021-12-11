# 🤙 dotfiles 
My minimal approach to maintaining my essential applications, configuration files, and settings between computers.

## ⚙️ Install Applications / Configs

>### ☁️ Step 1. Clone repo into `~`
>```sh 
>git clone git@github.com:globaljake/dotfiles.git ~/.dotfiles
>```
>### 🤓 Step 2. Symlink contents of the `.config` directory to `~` 
>```sh 
>ln -sf ~/dotfiles/.config/.* ~
>```
>### ✅ Step 3. Run `install.sh`
>```sh 
>chmod +x ~/dotfiles/install.sh && ~/dotfiles/install.sh
>```

## 📺 (Optional) Themes / System Settings

>### 🍎 macOS
>
>#### Run `scripts/macos.sh` to update most of the System Preferences
>    
>```sh 
>chmod +x ~/dotfiles/scripts/macos.sh && ~/dotfiles/scripts/macos.sh
>```
>
>#### Manually update the rest
>   * System Preferences → Keyboard → Keyboard → Key Repeat → Fast
>
>   * System Preferences → Keyboard → Keyboard → Delay Until Repeat → Short
>   
>   * System Preferences → Keyboard → Keyboard → Modifier Keys... → Caps Lock Key: Control
>   
>### 🧛🏽‍♂️ [Install Dracula theme everywhere always](https://draculatheme.com)
>  
>   → [Terminal](https://draculatheme.com/terminal)
>   
>   → [Google Chrome](https://draculatheme.com/chrome)
>   
>   → [Visual Studio Code](https://draculatheme.com/visual-studio-code)
>   
>   → [Slack](https://draculatheme.com/slack)
>   
>   → [Insomnia](https://draculatheme.com/insomnia)

## 📌 Cheat Sheet

>### Postgres
>
>Alter postgres owner
>```sh 
>psql -U postgres -c "ALTER DATABASE postgres OWNER TO postgres;"
>```
>Remove Homebrew initial db to reinit with `postgres` as the user
>```sh 
>rm -rf /usr/local/var/postgres &&
>initdb --locale=C -E UTF-8 $(brew --prefix)/var/postgres -U postgres
>```
