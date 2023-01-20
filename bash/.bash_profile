#!/bin/bash
# echo PROFILE SOURCED at login

# NOTE: Some OSes like Ubuntu/Mac expect bash_profile. Profile file: Runs on Logins.

# Sourcing bashrc on logins Redirect to bashrc

# clear
# printf "\n"
# printf "   %s\n" "USER: $USER"
# printf "   %s\n" "DATE: $(date)"
# printf "   %s\n" "UPTIME: $(uptime)"
# printf "   %s\n" "HOSTNAME: $(hostname -f)"
# printf "   %s\n" "KERNEL: $(uname -rms)"
# printf "\n"

[ -f ~/.bashrc ] && source ~/.bashrc

# EOF
