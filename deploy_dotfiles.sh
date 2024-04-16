#!/usr/bin/env zsh

# Use this script to deploy the dotfiles in this repository.

CONFIG_PATH="$HOME/.config"
MACHINE="$(uname -s)"

cp -r nvim/* "$CONFIG_PATH"/nvim/
cp alacritty/"$MACHINE"__alacritty.toml "$CONFIG_PATH"/alacritty/alacritty.toml

cp tmux/.tmux.conf "$HOME"/.tmux.conf
cp zsh/"$MACHINE"__zshrc "$HOME"/.zshrc
cp zsh/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh

if [[ "$MACHINE" == "Linux" ]]; then
	VSCODE_SETTINGS_PATH="$CONFIG_PATH/VSCodium/User"
elif [[ "$MACHINE" == "Darwin" ]]; then
	VSCODE_SETTINGS_PATH="$HOME/Library/Application Support/VSCodium/User/"
fi

mkdir -p $(dirname $VSCODE_SETTINGS_PATH)
cp vscode/"$MACHINE"__settings.json "$VSCODE_SETTINGS_PATH"/settings.json

if [[ $(uname -r) =~ 'ARCH' ]]; then
	echo 'deploying arch stuff'
	cp misc/.xinitrc "$HOME"/
	cp misc/.zprofile "$HOME"/
fi
