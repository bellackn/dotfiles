#!/usr/bin/env bash

# Use this script to update the dotfiles in this repository if you have made changes locally that you want to persist.

CONFIG_PATH="$HOME/.config"

cp -r "$CONFIG_PATH/kitty" ansible/files/
cp -r "$CONFIG_PATH/nvim" ansible/files

cp "$HOME/.tmux.conf" ansible/files
