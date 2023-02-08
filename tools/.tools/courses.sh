#!/usr/bin/env python3
# CDs into Onedrive../Sophomore if username is vishalpaudel

function courses()
{
    if [[ $# < 1 ]]; then

        echo "Ask usage from Vishal Paudel" && return -1

    elif [[ $# == 1 ]]; then

        echo "CDing the given directory"
        cd /Users/vishalpaudel/Library/CloudStorage/OneDrive-PlakshaUniversity/Sophomore/"$1"* && return 0

    else
        # elif [[ "${@: -1}" == l? ]]; then
        # cd ~/'OneDrive - Plaksha University/Sophomore'/"$1"*/"$2"* && return 0

        echo "More than one parameter"

    fi


    return -1
}
