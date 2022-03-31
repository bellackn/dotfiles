#!/usr/bin/env bash

brew install bat
brew install exa
brew install broot
brew install ripgrep
brew install bottom
brew install gping
brew install dog

brew tap cantino/mcfly
brew install cantino/mcfly/mcflymy
rg -q $HOME/.zshrc "mcfly init zsh"
if [[ $? == 1 ]]; then echo 'eval "$(mcfly init zsh)"' >> $HOME/.zshrc; fi