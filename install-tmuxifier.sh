#!/bin/bash

git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier

NEW_LINE='export PATH="$HOME/.tmuxifier/bin:$PATH"'
BASHRC="$HOME/.bashrc"

# Check if the line already exists in .bashrc
if ! grep -qF -- "$NEW_LINE" "$BASHRC"; then
    echo "Adding required PATH export to $BASHRC..."
    # Append the line to the .bashrc file
    echo "$NEW_LINE" >> "$BASHRC"
else
    echo "The required PATH export already exists in $BASHRC."
fi


