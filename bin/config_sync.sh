#!/bin/bash

WORKING_DIR="$(pwd | xargs dirname)"
CONFIG_DIR="$WORKING_DIR/.config"

# Sync config files
rsync --progress "$WORKING_DIR/.zshrc" "$HOME/"
rsync -r --progress "$CONFIG_DIR" "$HOME/"  --exclude="README.md"

#rsync -r --progress "$CONFIG_DIR" "$HOME/test/"  --exclude="README.md"
