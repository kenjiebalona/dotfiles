#!/bin/bash

# List of necessary Homebrew packages
packages=(
  git
  stow
  curl
  node
  htop
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
  # Add other packages you need here
)

# Function to check if a package is installed
is_installed() {
  brew list --formula | grep -q "^$1\$"
}

# Update Homebrew
echo "Updating Homebrew..."
brew update

# Install necessary packages
for package in "${packages[@]}"; do
  if is_installed "$package"; then
    echo "$package is already installed."
  else
    echo "Installing $package..."
    brew install "$package"
  fi
done

# Cleanup
echo "Cleaning up..."
brew cleanup

echo "All packages are installed and updated!"
