# Script Installers

A collection of bash scripts to automate the installation of various applications and tools on Arch Linux.

## Requirements

- **Arch Linux** (or Arch-based distributions)
- **pacman** package manager
- **yay** AUR helper (for some scripts)

## Available Scripts

### Individual Installation Scripts

- **install-stow.sh** - Installs GNU Stow, a symlink farm manager
- **install-tmux.sh** - Installs tmux, a terminal multiplexer
- **install-tmux-plugin-manage.sh** - Installs TPM (Tmux Plugin Manager)
- **install-tmux-catppuccin.sh** - Installs Catppuccin theme for tmux
- **install-tmuxifier.sh** - Installs tmuxifier, a tmux session management tool
- **install-telegram.sh** - Installs Telegram Desktop messenger
- **install-nvm.sh** - Installs NVM (Node Version Manager)
- **install-postman.sh** - Installs Postman API testing tool
- **install-google-chrome.sh** - Installs Google Chrome browser and sets it as default

### Batch Installation

- **install-all.sh** - Runs all individual installation scripts in sequence

## Usage

### Install Everything

To install all applications at once:

```bash
./install-all.sh
```

### Install Individual Applications

To install specific applications, run the corresponding script:

```bash
./install-stow.sh
./install-tmux.sh
./install-tmux-plugin-manage.sh
./install-tmux-catppuccin.sh
./install-tmuxifier.sh
./install-telegram.sh
./install-nvm.sh
./install-postman.sh
./install-google-chrome.sh
```

## What Each Script Does

### install-stow.sh
Installs GNU Stow using pacman. Stow is useful for managing dotfiles and configuration files through symlinks.

### install-tmux.sh
Installs tmux using pacman. Tmux allows you to run multiple terminal sessions within a single window.

### install-tmux-plugin-manage.sh
Installs TPM (Tmux Plugin Manager) from GitHub to `~/.tmux/plugins/tpm`. TPM helps manage tmux plugins easily.

### install-tmux-catppuccin.sh
Installs the Catppuccin theme (v2.1.3) for tmux to `~/.config/tmux/plugins/catppuccin/tmux`. Catppuccin is a soothing pastel theme.

### install-tmuxifier.sh
Clones tmuxifier from GitHub to `~/.tmuxifier` and adds it to your PATH by modifying `~/.bashrc`.

### install-telegram.sh
Installs Telegram Desktop using pacman, providing a native Linux client for the Telegram messaging platform.

### install-nvm.sh
Installs NVM (Node Version Manager) using the official install script. NVM allows you to manage multiple Node.js versions.

### install-postman.sh
Installs Postman using yay from the AUR. Postman is a popular API development and testing tool.

### install-google-chrome.sh
Installs Google Chrome browser using yay and sets it as the default web browser.

### install-all.sh
Sources and executes all individual installation scripts in the following order:
1. Stow
2. Tmux
3. Tmux Catppuccin theme
4. Tmuxifier
5. Telegram
6. NVM (Node Version Manager)
7. Postman

Note: Google Chrome and Tmux Plugin Manager are not included in the batch install script.

## Notes

- Most scripts use the `--noconfirm` flag to skip confirmation prompts
- Some scripts may require sudo privileges
- The tmuxifier script modifies your `~/.bashrc` file to add the tool to your PATH
- The NVM script will modify your shell configuration files (`.bashrc`, `.zshrc`, etc.) to add NVM to your PATH

## License

This project is open source and available for use.
