#!/bin/sh

# RUN THIS SCRIPT AS SUDO
# Maya Mac Dotfiles installer - local copy saved in icloud in addition to this git repo
# installs homebrew, installs brewfile, copies /.config folders/items from repo as well as zsh configurations to appropriate locations

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install git via Homebrew
brew install git

# Clone git repo for access to config files
git clone https://github.com/mayaheartsu/mac-dotfiles

# Install Brewfile & cleanup residual dependancies
cp ~/mac-dotfiles/Brewfile ~/
brew bundle
brew bundle cleanup --global --force

# Copy aerospace, sketchybar, oh-my-posh, zsh, kitty, & yazi configs from local repo to .config locations
cp -r ~/mac-dotfiles/.config/* ~/.config
cp ~/mac-dotfiles/.p10k.zsh ~/
cp ~/mac-dotfiles/.zshrc ~/
cp ~/mac-dotfiles/.zprofile ~/