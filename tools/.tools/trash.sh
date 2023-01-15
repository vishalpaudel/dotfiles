#!/bin/bash

function trash() {

    for file in $@; do
        mv $file ~/.Trash
    done
}
