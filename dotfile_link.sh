#!/bin/bash

# list of all the tracked config files (consider tracking oh-my-zsh) 
dotfiles=(.aliases .gitconfig .screenrc .sh-common .tmux.conf .vimrc .zshrc)

# creates links to all the tracked files
for f in "${dotfiles[@]}"; do
    if [ -f "$f" ]; then
        ln -s -i $HOME/"$f" "$f" 
    fi
done

exit 0
