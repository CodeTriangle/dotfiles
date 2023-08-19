# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -a "$HOME/.aliases" ] && . "$HOME/.aliases"

__git_ps1() {
    printf "$(git branch 2>/dev/null | grep '^\*' | colrm 1 2)"
}

export PROMPT_COMMAND='sc=$?';
export PS1="\[\e[1;31m\]\$([ \$sc -eq 0 ] || printf \"{\$sc} \")\[\e[1;33m\][\u@\h] \[\e[1;36m\][\D{%d %b %Y} \t] \[\e[1;35m\]\w \[\e[1;32m\]\$(__git_ps1)\n\[\e[0m\]\$ "

export PATH="$HOME/bin:$PATH"

[ -a "$HOME/bin/fzf.sh" ] && . "$HOME/bin/fzf.sh"
