# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

set -o vi

# alias ls='exa'
alias la='ls -a'
alias ll='ls -al'

alias ..="cd .."
alias ...="cd ../.."
alias 3..="cd ../../.."
alias 4..="cd ../../../.."

alias tuv="sudo xbps-install"

__git_ps1() {
    printf "$(git branch 2>/dev/null | grep '^\*' | colrm 1 2)"
}

export PROMPT_COMMAND='sc=$?';
export PS1="\[\e[1;33m\][\u@\h] \[\e[1;36m\][\D{%d %b %Y} \t] \[\e[1;35m\]\w \[\e[1;32m\]\$(__git_ps1)\n\[\e[1;31m\]\$([ \$sc -eq 0 ] || printf \"{\$sc} \")\[\e[0m\]\$ "

export PATH="$HOME/.emacs.d/bin:$HOME/programs/bash:$PATH"

function identity {
    if [[ $1 == "richard" ]]; then
        git config user.name "Richard Snider"
        git config user.email "richard.snider@aggiemail.usu.edu"
    elif [[ $1 == "reuben" ]]; then
        git config user.name "Reuben Staley"
        git config user.email "lighthousemaniac@gmail.com"
    else
        echo "bad identity"
    fi
}

source "$HOME/.cargo/env"

PATH="/home/reuben/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/reuben/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/reuben/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/reuben/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/reuben/perl5"; export PERL_MM_OPT;
