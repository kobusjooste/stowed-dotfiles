#!/bin/bash

#history
shopt -s histappend
shopt -s cmdhist
export HISTFILESIZE=
export HISTSIZE=
export HISTCONTROL=ignoreboth
export HISTIGNORE='ls:bg:fg:history'
export HISTFILE=~/.bash_eternal_history
export PROMPT_COMMAND="history -a ; $PROMPT_COMMAND"
