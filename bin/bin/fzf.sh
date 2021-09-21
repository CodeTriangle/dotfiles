# this is not a script. it is meant to be `source`d in your shell startup script

export FZF='fzf' # the program to use
export FZF_DEFAULT_COMMAND='fd --type file'
export FZF_DEFAULT_OPS=''

[ -v TMUX ] && export FZF='fzf-tmux' # change to fzf-tmux if we are in tmux

function viz {
    local file = $(FZF) || return
    vim $($FZF)
}

function gchb {
    local branches
    branches=$(git branch) || return

    local branch
    branch=$(echo "$branches" | grep -v '^*' | cut -c 3- | $FZF) || return

    git checkout $branch
}

function gchc {
    local commits
    commits=$(git log --oneline --decorate) || return

    local commit
    commit=$(echo "$commits" | grep -v '^*' | $FZF) || return

    git checkout $(echo "$commit" | cut -c 1-7)
}
