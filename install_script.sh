#!/usr/bin/env bash

# set -e                # exit on error
# set -o pipefail       # exit on piping error
# set -x                # verbosity

# Don't link the DS_Store files
find . -name ".DS_Store" -exec rm {} \;

# Backup old dotfiles
OLD_DOTFILES="dotfile_bk_$(date -u +"%Y%m%d%H%M%S")"
mkdir "$OLD_DOTFILES"

function backup_if_exists() {
    if [ -f "$1" ];
    then
        mv "$1" "$OLD_DOTFILES"
    fi
    if [ -d "$1" ];
    then
        mv "$1" "$OLD_DOTFILES"
    fi
}

# Clean common conflicts
backup_if_exists ~/.bashrc
backup_if_exists ~/.vimrc
backup_if_exists ~/.nvimrc
backup_if_exists ~/.gitconfig
backup_if_exists ~/.bash_profile

brew services restart yabai

# Neovim install/linking
mkdir -p "$HOME/.neovim/node"

ln -s "/opt/homebrew/Cellar/neovim/0.8.1" "$HOME/.neovim"
ln -s "/opt/homebrew/Cellar/node/19.4.0" "$HOME/.neovim/node"

# For now manually GNU Stow(ing) all the stuff
# stow -v --target=$HOME $program
# ls -d */ | xargs stow -v --target=$HOME

echo "Copied Vishal's configs"
