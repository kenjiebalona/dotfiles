# My dotfiles

This directory contains the dotfiles for my system

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

## Symlink
```bash
$ chmod +x link.sh
$ ./link.sh
```


