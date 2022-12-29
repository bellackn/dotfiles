#!/usr/bin/env bash

echo "Updating package repositories..."
sudo apt update >/dev/null 2>&1

echo "Installing basic dependencies..."
sudo apt install -y \
  curl \
	git \
	python3-pip \
	zsh \
>/dev/null 2>&1

python3 -m pip install --upgrade pip >/dev/null 2>&1

echo "Downloading dotfiles repo to ~/dev/dotfiles..."
mkdir -p ~/dev
git clone https://github.com/bellackn/dotfiles.git ~/dev/dotfiles 

echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Done!"