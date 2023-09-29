# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -a "$HOME/.aliases" ] && . "$HOME/.aliases"

__git_ps1() {
    printf "$(git branch 2>/dev/null | grep '^\*' | colrm 1 2)"
}

export PROMPT_COMMAND='sc=$?';
export PS1="\[\e[1;31m\]\$([ \$sc -eq 0 ] || printf \"{\$sc} \")\[\e[1;33m\][\u@\h] \[\e[1;36m\][\D{%d %b %Y} \t] \[\e[1;35m\]\w \[\e[1;32m\]\$(__git_ps1)\n\[\e[0m\]\$ "

export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

[ -a "$HOME/bin/fzf.sh" ] && . "$HOME/bin/fzf.sh"

PATH="/home/richard/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/richard/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/richard/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/richard/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/richard/perl5"; export PERL_MM_OPT;
