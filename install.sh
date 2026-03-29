#!/bin/sh

# DO NOT RUN THIS SCRIPT AS SUDO - WILL RESULT IN INCORRECT OWNERSHIP/PERMISSIONS
# Maya Mac Dotfiles installer - local copy saved in icloud in addition to this git repo
# installs homebrew, installs brewfile, creates & copies config folders/items and zsh configuration from repo to appropriate locations

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Clone git repo for access to config files
git clone https://github.com/mayaheartsu/mac-dotfiles

# Install Brewfile
cp ~/mac-dotfiles/Brewfile ~/
brew bundle
# brew bundle cleanup --global --force

# Create config directory, copy aerospace, sketchybar, oh-my-posh, zsh, kitty, & yazi configs from repo to .config locations
mkdir ~/.config
cp -r ~/mac-dotfiles/.config/* ~/.config
cp ~/mac-dotfiles/.p10k.zsh ~/
cp ~/mac-dotfiles/.zshrc ~/
cp ~/mac-dotfiles/.zprofile ~/