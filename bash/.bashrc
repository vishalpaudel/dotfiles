#!/bin/bash
# echo BASHRC FILE

# ENVIRONMENT SETUP --------------------------------
if [ -f ~/.env ]; then
    source ~/.env
fi


# BASH PROMPT --------------------------------------
## COLORS
blk='\[\033[01;30m\]'   # Black
red='\[\033[01;31m\]'   # Red
grn='\[\033[01;32m\]'   # Green
ylw='\[\033[01;33m\]'   # Yellow
blu='\[\033[01;34m\]'   # Blue
pur='\[\033[01;35m\]'   # Purple
cyn='\[\033[01;36m\]'   # Cyan
wht='\[\033[01;37m\]'   # White
clr='\[\033[00m\]'      # Reset

## Display the current Git branch in the Bash prompt.
function git_branch() {
    if [ -d .git ] ; then
        printf "%s" "($(git branch 2> /dev/null | awk '/\*/{print $2}'))";
    fi
}

## Set the prompt.
function bash_prompt(){
    error_code=$?
    # PS1=${wht}'${VIRTUAL_ENV##*/} '${blu}'$(git_branch)'${ylw}' $error_code'${pur}' \W'${red}' >'${ylw}'>'${cyn}'> '${clr}
    PS1=${ylw}'$error_code'${pur}' \W'${red}' >'${ylw}'>'${cyn}'> '${clr}
}
PROMPT_COMMAND=bash_prompt


# ALIASES ----------------------------------------------
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi


# PLUGINS ----------------------------------------------

## FUZZYFINDER
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# BLESH
[[ $- == *i* ]] && source ~/.local/share/blesh/ble.sh --noattach
[ -f ~/.blerc ] && source ~/.blerc
[[ ${BLE_VERSION-} ]] && ble-attach

# BROOT
source /Users/pogovishal/.config/broot/launcher/bash/br


# HISTORY
HISTCONTROL=ignoredups  # Ignores dupliate of commands in history
HISTSIZE=2000  # upper limit in number of lines saved in history
HISTFILESIZE=2000  # I do not know
HISTIGNORE="$HISTIGNORE:jrnl *"  # I do not know
shopt -s histappend  # appends to history instead of rewriting


# BASIC SETTINGS
set -o vi

### SYS INFO PRINT
neofetch

# EOF
