#!/bin/bash

# Set up Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Set up Rust Language
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install tools
brew install ripgrep jq tree
brew install kubectl kustomize
cargo install git-delta

# Install Apps
brew install go
brew cask install firefox

