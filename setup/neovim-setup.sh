#!/bin/bash

brew install nvim

# Backup
/bin/mv ./vim/.config/nvim ./vim/.config/nvim.bak

# Install lazy vim
git clone https://github.com/LazyVim/starter ./vim/.config/nvim

/bin/rm -rf ~/.neovim

# Link homebrew's version of neovim
ln -s /opt/homebrew/Cellar/neovim/0.*/ ~/.neovim
