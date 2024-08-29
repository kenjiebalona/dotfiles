#!/bin/bash

# List of necessary Homebrew packages
packages=(
  git
  stow
  curl
  node
  btop
  deno
  apple-music-discord-rpc
  eza
  neovim
  tmux
  starship
  ripgrep
  bat
  nvm
  tealdeer
  yazi
  fzf
  zoxide
  lazygit
  # Add other packages you need here
)

# Update Homebrew
echo "Updating Homebrew..." && brew update

# Install necessary packages
for package in "${packages[@]}"; do
  brew list --formula "$package" &>/dev/null && echo "$package is already installed" || (echo "Installing $package..." && brew install "$package")
done

# Cleanup
echo "Cleaning up..." && brew cleanup

echo "All packages are installed and updated!"
