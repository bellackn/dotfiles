#!/usr/bin/env bash

# Use this script to update the dotfiles in this repository if you have made changes locally that you want to persist.

CONFIG_PATH="$HOME/.config"

cp -r "$CONFIG_PATH"/kitty/* ../kitty
cp -r "$CONFIG_PATH"/nvim/* ../nvim
cp "$CONFIG_PATH"/alacritty/* ../alacritty
# Alacritty themes must be installed manually - see https://github.com/alacritty/alacritty-theme

cp "$HOME"/.tmux.conf ../tmux
cp "$HOME"/.zshrc ../zsh

if [[ $(uname -o) == "GNU/Linux" ]]; then
	VSCODE_SETTINGS="$CONFIG_PATH/VSCodium/User/settings.json"
else
	VSCODE_SETTINGS="$HOME/Library/Application Support/VSCodium/User/settings.json"
fi

cp "$VSCODE_SETTINGS" ../vscode

if [[ $(uname -r) =~ 'ARCH' ]]; then
	echo 'updating arch stuff'
	cp "$HOME"/.xinitrc ../misc/
	cp "$HOME"/.zprofile ../misc/
fi
