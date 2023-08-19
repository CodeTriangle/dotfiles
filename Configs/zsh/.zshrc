# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=5000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

PATH=$PATH:/usr/local/jdk-11/bin:/home/reuben/.local/bin

LISTER=exa
PAGER=less

alias ls=exa
alias  ..='cd ..'
alias ...='cd ../..'
alias 3..='cd ../../..'
alias 4..='cd ../../../..'

function identity {
    if [[ $1 == "richard" ]] then
        git config user.name "Richard Snider"
        git config user.email "richard.snider@aggiemail.usu.edu"
    elif [[ $1 == "reuben" ]] then
        git config user.name "Reuben Staley"
        git config user.email "lighthousemaniac@gmail.com"
    else
        echo "bad identity"
    fi
}

function les {
    if [[ $1 == "" ]] then $LISTER;
        elif [[ -d $1 ]] then $LISTER $1;
        elif [[ -e $1 ]] then $PAGER $1;
        else echo "les: file not found";
    fi
}

PROMPT="%{%B%{%F{yellow}[%n@%m]%f%} %{%F{cyan}[%D{%Y-%m-%d %T}]%f%} %{%F{magenta}%~%f%}
%{%F{black}%#%f%}%b%} "
