#!/bin/bash

# list of all the tracked config files (consider tracking oh-my-zsh) 
dotfiles=(.aliases .gitconfig .screenrc .sh-common .tmux.conf .vimrc .zshrc .warprc)

# creates links to all the tracked files
for f in "${dotfiles[@]}"; do
    if [ -f "$f" ]; then
        ln -i $HOME/"$f" "$f" 
    fi
done

exit 0
