#!/usr/bin/env zsh

# set -e                # exit on error
# set -o pipefail       # exit on piping error
# set -x                # verbosity

function pull_repo() {
    cd $1
    git pull
    cd -
}

mkdir -p $HOME/bin

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
# mkdir -p "$HOME/.neovim/node"

# Have to find the directories where neovim and node are
# ln -s "/opt/homebrew/Cellar/neovim/0.8.1" "$HOME/.neovim"
# ln -s "/opt/homebrew/Cellar/node/19.4.0" "$HOME/.neovim/node"

# For now manually GNU Stow(ing) all the stuff
# stow -v --target=$HOME $program
# ls -d */ | xargs stow -v --target=$HOME

# simple bar
# git clone https://github.com/Gitmaster511/simple-bar-m1 $HOME/Library/Application\ Support/Übersicht/widgets/simple-bar
# git clone https://github.com/Jean-Tinland/simple-bar $HOME/Library/Application\ Support/Übersicht/widgets/simple-bar

# PACKAGES

#######################
# BIN
#######################

function pull_repo() {
    cd $1
    git pull
    cd -
}

mkdir -p $HOME/bin

# FASD
if [[ ! -f $HOME/bin/fasd ]]; then
    git clone https://github.com/clvv/fasd.git /tmp/fasd
    cd /tmp/fasd
    PREFIX=$HOME make install
    cd -
fi

# FZF
if [[ ! -f $HOME/.fzf/bin/fzf ]]; then
    git clone https://github.com/junegunn/fzf.git $HOME/.fzf
    yes | $HOME/.fzf/install
fi

# DIFF-SO-FANCY
if [[ ! -f $HOME/bin/diff-so-fancy ]]; then
    curl -o $HOME/bin/diff-so-fancy https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy
    chmod +x $HOME/bin/diff-so-fancy
fi


#######################
# TMUX
#######################

if [[ ! -d $HOME/.tmux/plugins/tpm ]]; then
    mkdir -p $HOME/.tmux/plugins
    git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
fi
pull_repo $HOME/.tmux/plugins/tpm

#######################
# ZSH
#######################
if [[ ! -d $HOME/.zprezto ]]; then
    git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
      ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done
fi
cd $HOME/.zprezto
git pull
git submodule update --init --recursive
cd - 

mkdir -p $HOME/.zsh

# Fast syntax highlighting
if [[ ! -d $HOME/.zsh/fast-syntax-highlighting ]]; then
    git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git $HOME/.zsh/fast-syntax-highlighting
fi
pull_repo $HOME/.zsh/fast-syntax-highlighting

# Create Python3 environment
if [[ ! -d $NVIM/py3 ]]; then
    python3 -m venv $NVIM/py3
    PIP=$NVIM/py3/bin/pip
    $PIP install --upgrade pip
    $PIP install neovim
    $PIP install 'python-language-server[all]'
    $PIP install pylint isort jedi flake8
    $PIP install black yapf
fi

# STOW
/bin/ls -d */ | xargs stow -v --target=$HOME

echo "Copied Vishal's configs"
