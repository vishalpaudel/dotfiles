#!/bin/bash

ssh-keygen -t ed25519 -C "95016059+POGOvishal@users.noreply.github.com"

eval "$(ssh-agent -s)"

touch ~/.ssh/config

echo "Host *.github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519" > ~/.ssh/config

ssh-add --apple-use-keychain ~/.ssh/id_ed25519

pbcopy < ~/.ssh/id_ed25519.pub

echo "SSH Key succesfully copied to clipboard! Paste on github."


