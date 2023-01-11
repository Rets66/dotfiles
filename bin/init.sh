#!/bin/bash

# Set up Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Set up Rust Language
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Update Homebrew
brew update
brew upgrade

# Install CLI tools
brew install neovim
brew install jq
brew install tree
brew install curl
brew install ranger
brew install wget
brew install ripgrep
brew install kubectl
brew install kustomize
brew install go
brew install fd
brew install tfenv

# Install Apps
brew cask install firefox
brew cask install thunderbird
brew cask install slack
brew cask install karabiner-elements
brew cask install zoom

# Other
cargo install git-delta
