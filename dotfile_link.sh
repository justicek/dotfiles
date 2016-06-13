#!/bin/bash
# dotfile_link: links config files to local git directory

# list of all the tracked config files (consider tracking oh-my-zsh) 
dotfiles=(.aliases .screenrc .sh-common .tmux.conf .vimrc .zshrc .warprc .my.cnf)

# creates links to all the tracked files
for f in "${dotfiles[@]}"; do
    if [ -f $HOME/"$f" ]; then
        ln -i $HOME/"$f" "$f" 
    fi
done

exit 0
