#!/bin/bash

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Linking dotfiles from: $DOTFILES_DIR"

# --- home files ---
ln -sf "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"
ln -sf "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"

# --- config directory ---
mkdir -p "$HOME/.config"

ln -sfn "$DOTFILES_DIR/.config/bat"  "$HOME/.config/bat"
ln -sfn "$DOTFILES_DIR/.config/ghostty"  "$HOME/.config/ghossty"
ln -sfn "$DOTFILES_DIR/.config/nvim"  "$HOME/.config/nvim"
ln -sfn "$DOTFILES_DIR/.config/scripts"  "$HOME/.config/scripts"
ln -sfn "$DOTFILES_DIR/.config/starship"  "$HOME/.config/starship"

echo "Done."
