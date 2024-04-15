#!/usr/bin/env bash

# Use this script to deploy the dotfiles in this repository.

CONFIG_PATH="$HOME/.config"
MACHINE="$(uname -s)"

cp -r nvim/* "$CONFIG_PATH"/nvim/
cp alacritty/"$MACHINE"__alacritty.toml "$CONFIG_PATH"/alacritty/alacritty.toml

cp tmux/.tmux.conf "$HOME"/.tmux.conf
cp zsh/"$MACHINE"__zshrc "$HOME"/.zshrc
cp zsh/aliases.zsh "$ZSH_CUSTOM"/

if [[ "$MACHINE" == "Linux" ]]; then
	VSCODE_SETTINGS="$CONFIG_PATH/VSCodium/User/settings.json"
elif [[ "$MACHINE" == "Darwin" ]]; then
	VSCODE_SETTINGS="$HOME/Library/Application Support/VSCodium/User/settings.json"
fi

mkdir -p $(dirname $VSCODE_SETTINGS)
cp vscode/settings.json "$VSCODE_SETTINGS"

if [[ $(uname -r) =~ 'ARCH' ]]; then
	echo 'deploying arch stuff'
	cp misc/.xinitrc "$HOME"/
	cp misc/.zprofile "$HOME"/
fi
