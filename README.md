# 🤙 dotfiles

My minimal approach to maintaining my essential applications, configuration files, and settings between computers.

## Install Applications / Configs

### ☁️ Step 1. Clone repo into `~`

```sh
git clone https://github.com/globaljake/dotfiles.git ~/.dotfiles
```

### 🤓 Step 2. Symlink contents of the `.config` directory to `~`

```sh
ln -sf ~/.dotfiles/.config/.* ~
```

### ✅ Step 3. Run `install.sh`

```sh
chmod +x ~/.dotfiles/install.sh && ~/.dotfiles/install.sh
```

<br>

## (Optional) Themes / System Settings

### 🍎 macOS System Preferences

#### Run `scripts/macos.sh` to update most of the System Preferences

```sh
chmod +x ~/.dotfiles/scripts/macos.sh && ~/.dotfiles/scripts/macos.sh
```

#### Manually update the rest

- System Preferences → Keyboard → Keyboard → Key Repeat → Fast

- System Preferences → Keyboard → Keyboard → Delay Until Repeat → Short

- System Preferences → Keyboard → Keyboard → Modifier Keys... → Caps Lock Key: Control

### 🧛🏽‍♂️ [Dracula Theme](https://draculatheme.com)

#### Install Everywhere

- [Terminal](https://draculatheme.com/terminal)
- [Visual Studio Code](https://draculatheme.com/visual-studio-code)
- [Google Chrome](https://draculatheme.com/chrome)
- [Slack](https://draculatheme.com/slack)
- [Insomnia](https://draculatheme.com/insomnia)
