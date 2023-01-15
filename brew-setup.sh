#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Should ideally be in the BrewFile
brew install bash
brew install stow
brew install diff-so-fancy
brew install colordiff
brew install python@3.10
brew install exa
brew install broot

echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.bash_profile && source ~/.bash_profile
