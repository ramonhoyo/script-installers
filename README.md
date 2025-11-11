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
- **install-tmuxifier.sh** - Installs tmuxifier, a tmux session management tool
- **install-telegram.sh** - Installs Telegram Desktop messenger
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
./install-tmuxifier.sh
./install-telegram.sh
./install-google-chrome.sh
```

## What Each Script Does

### install-stow.sh
Installs GNU Stow using pacman. Stow is useful for managing dotfiles and configuration files through symlinks.

### install-tmux.sh
Installs tmux using pacman. Tmux allows you to run multiple terminal sessions within a single window.

### install-tmuxifier.sh
Clones tmuxifier from GitHub to `~/.tmuxifier` and adds it to your PATH by modifying `~/.bashrc`.

### install-telegram.sh
Installs Telegram Desktop using pacman, providing a native Linux client for the Telegram messaging platform.

### install-google-chrome.sh
Installs Google Chrome browser using yay and sets it as the default web browser.

### install-all.sh
Sources and executes all individual installation scripts in the following order:
1. Stow
2. Tmux
3. Tmuxifier
4. Telegram

Note: Google Chrome is not included in the batch install script.

## Notes

- Most scripts use the `--noconfirm` flag to skip confirmation prompts
- Some scripts may require sudo privileges
- The tmuxifier script modifies your `~/.bashrc` file to add the tool to your PATH

## License

This project is open source and available for use.
