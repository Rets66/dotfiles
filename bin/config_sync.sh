#!/bin/bash

# Environment Variable
DOTFILE_HOME_PATH=$(pwd | xargs dirname)
CONFIG_PATH=$(pwd)/.config
VIM_PATH=$DOTFILE_HOME_PATH/.config/nvim

# Sync config files
# rsync --progress "$DOTFILE_HOME_PATH/.zshrc" "$HOME/"
# rsync -r --progress "$CONFIG_PATH" "$HOME/"  --exclude="README.md"
# rsync -r --progress "$CONFIG_DIR" "$HOME/test/"  --exclude="README.md"

# Symbolic link
# ln -s $DOTFILE_HOME_DIR/.zshrc $HOME
# find $VIM_PATH -name *.vim | awk '{print substr($0, 1)}' | xargs -I ln -s {} $HOME/Desktop/.config/
