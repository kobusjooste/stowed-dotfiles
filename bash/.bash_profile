#!/bin/bash

#this profile script ties everything together

#export LANG="en_US.UTF-8"
#export LC_ALL="en_US.UTF-8"

[[ -f ~/.bashrc ]]    && source ~/.bashrc

[[ -d ~/bin ]]        && export PATH=~/bin:$PATH
[[ -d ~/.local/bin ]] && export PATH=~/.local/bin:$PATH

#source our profile files under .progile.d
for file in "$HOME"/.profile.d/*.sh ; do
    source "$file"
done

#LOCAL - consider putting profile commands in a file in ~/.profile.d/*.sh instead

umask 022
