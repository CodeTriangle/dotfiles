# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='exa'
alias la='ls -a'
alias ll='ls -al'

alias ..="cd .."
alias ...="cd ../.."
alias 3..="cd ../../.."
alias 4..="cd ../../../.."

alias tuv="sudo xbps-install"

export PS1="\[\e[1;33m\][\u@\h] \[\e[1;36m\][\D{%d %b %Y} \t] \[\e[1;35m\]\w \[\e[1;32m\]\$(git branch 2>/dev/null | grep '^\*' | colrm 1 2)\n\[\e[0m\]\$ "

export PATH="/home/reuben/programs/bash:$PATH"
