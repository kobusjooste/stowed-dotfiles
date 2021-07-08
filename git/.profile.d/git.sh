#!/bin/bash

#make completion work for 'g' alias

[[ -f /usr/share/bash-completion/completions/git ]] && \
    source /usr/share/bash-completion/completions/git && \
        __git_complete g __git_main
