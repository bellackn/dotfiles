#!/usr/bin/env bash

# Use this script to deploy the dotfiles in this repository.

CONFIG_PATH="$HOME/.config"

cp -r ../kitty/* "$CONFIG_PATH"/kitty/
cp -r ../nvim/* "$CONFIG_PATH"/nvim/
cp ../alacritty/alacritty.toml "$CONFIG_PATH"/alacritty/

cp ../tmux/.tmux.conf "$HOME"/.tmux.conf
cp ../skhd/.skhdrc "$HOME"/.skhdrc
cp ../zsh/.zshrc "$HOME"/.zshrc

if [[ $(uname -o) == "GNU/Linux" ]]; then
	VSCODE_SETTINGS="$CONFIG_PATH/VSCodium/User/settings.json"
else
	VSCODE_SETTINGS="$HOME/Library/Application Support/VSCodium/User/settings.json"
fi

mkdir -p $(dirname $VSCODE_SETTINGS)
cp ../vscode/settings.json "$VSCODE_SETTINGS"

if [[ $(uname -r) =~ 'ARCH' ]]; then
	echo 'deploying arch stuff'
	cp ../misc/.xinitrc "$HOME"/
	cp ../misc/.zprofile "$HOME"/
fi
