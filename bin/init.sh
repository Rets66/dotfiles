#!/bin/bash

# Set up Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Set up Rust Language
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Update Homebrew
brew update
brew upgrade

# Install tools
brew install ripgrep
brew install jq
brew install tree
brew install kubectl
brew install kustomize
brew install go
brew install ranger
brew install tfenv
brew install curl
brew install wget
brew install neovim

# Install Apps
brew cask install firefox
brew cask install thunderbird
brew cask install slack
brew cask install karabiner-elements
brew cask install zoom

# Other
cargo install git-delta
