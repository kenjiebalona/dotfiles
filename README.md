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
$ chmod +x install_brew_packages.sh
$ ./install_brew_packages.sh
```

then use GNU stow to create symlinks

```bash
$ stow .
```

Additional installation for

Terminal

```bash
$ brew install --cask alacritty
```

[Install Amazon Q for command line](https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/command-line-getting-started-installing.html)
