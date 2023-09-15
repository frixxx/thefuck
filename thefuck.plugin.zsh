#!/usr/bin/env zsh

# Check if command exists
if ! (( $+commands[thefuck] )); then
    echo "WARNING: 'thefuck' command not found. Please install it (f.e. with HomeBrew)."
    return
fi

# Creates the fuck alias
eval $(thefuck --alias)
