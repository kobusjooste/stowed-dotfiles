#!/bin/bash

# don't do anything, if we're not running interactively
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

[[ -f ~/.aliases ]] && source ~/.aliases
