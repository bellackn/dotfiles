#!/usr/bin/env bash

# Use this script to deploy the dotfiles in this repository.

CONFIG_PATH="$HOME/.config"

cp -r ../kitty/* "$CONFIG_PATH"/kitty/
cp -r ../nvim/* "$CONFIG_PATH"/nvim/

cp ../tmux/.tmux.conf "$HOME"/.tmux.conf
cp ../skhd/.skhdrc "$HOME"/.skhdrc
cp ../zsh/.zshrc "$HOME"/.zshrc
cp ../vscode/settings.json "$HOME/Library/Application Support/VSCodium/User/settings.json"
