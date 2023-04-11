#!/usr/bin/env bash

# Use this script to update the dotfiles in this repository if you have made changes locally that you want to persist.

CONFIG_PATH="$HOME/.config"

cp -r "$CONFIG_PATH"/kitty/* ../kitty
cp -r "$CONFIG_PATH"/nvim/* ../nvim

cp "$HOME"/.tmux.conf ../tmux
cp "$HOME"/.skhdrc ../skhd
cp "$HOME"/.zshrc ../zsh
cp "$HOME/Library/Application Support/Code/User/settings.json" ../vscode
