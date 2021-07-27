# this is not a script. it is meant to be `source`d in your shell startup script

export FZF='fzf' # the program to use
export FZF_DEFAULT_COMMAND='fd --type file'
export FZF_DEFAULT_OPS=''

[ -v TMUX ] && export FZF='fzf-tmux' # change to fzf-tmux if we are in tmux

function viz {
    vim $($FZF)
}
