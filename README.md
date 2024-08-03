# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Brew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```bash
$ git clone git:github.com/kenjiebalona/dotfiles.git
$ cd dotfiles
```

## Homebrew package installation

To ensure all necessary homebrew packages are installed

```bash
$ ./install_brew_packages.sh
```

## Additional installation

Terminal

```bash
$ brew install --cask alacritty
```

[Install Amazon Q for command line](https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/command-line-getting-started-installing.html)

## Adding a new dotfile

**Create a directory**
Inside the dotfiles directory, create a new directory for the dotfile you want to add. Example: '.zshrc'

```bash
$ mkdir -p ~/dotfiles/zsh
$ mv ~/.zhrc ~/dotfiles/zsh
```

### Stow a dotfile

```bash
$ cd ~/dotfiles
$ stow zsh
```

This will create a symlinks in your home directory (`~`) for the file `.zshrc`.

## Adding a new config

**Create a directory**
Inside the dotfiles directory, create a new directory for the config you want to add. Example: 'nvim'

```bash
$ mkdir -p ~/dotfiles/nvim/.config
$ mv ~/.config/nvim ~/dotfiles/nvim/.config
```

### Stow a config

```bash
$ cd ~/dotfiles
$ stow nvim
```

This will create a symlinks in your config directory (`~/.config`) for the files in the `nvim` directory.

### Unstow

To remove the symlinks created by Stow, you can use the `stow -D` command:

```bash
$ cd ~/dotfiles
$ stow -D nvim
```

## Avoiding conflicts

Before stowing your dotfiles, you may want to run the following commands to avoid conflicts.

### neovim

```bash
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
```
