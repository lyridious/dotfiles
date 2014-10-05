# IT'S DANGEROUS TO GO ALONE! TAKE THIS.

path=(
    /usr/local/bin
    ~/Library/Python/2.7/bin
    ~/.gem/ruby/2.0.0/bin
    ~/.npm-packages/bin
    /usr/local/opt/go/libexec/bin
    ~/.gopath/bin
    $path
)

if [[ $TERM != screen* ]]; then
    session=`hostname -s`
    if tmux has-session -t $session 2>/dev/null; then
        session_id=${session}-`uuidgen`
        tmux new-session -d -t $session -s $session_id
        tmux new-window
        (tmux set-option -t $session_id destroy-unattached \
            > /dev/null 2>&1) & disown
        tmux attach-session -t $session_id
    else
        tmux new-session -s $session
    fi
fi

if [[ $OSTYPE == darwin* ]]; then
    alias vim="reattach-to-user-namespace vim"
    alias mvim="reattach-to-user-namespace mvim"
fi

alias retain="unset TMOUT"

zmodload zsh/complist
autoload -Uz compinit
autoload -Uz bashcompinit
compinit -i
bashcompinit
source /usr/local/etc/bash_completion.d/npm
source /usr/local/etc/bash_completion.d/youtube-dl.bash-completion
source /usr/local/etc/bash_completion.d/ag.bashcomp.sh

export TMOUT=60
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export GOPATH=~/.gopath

unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/helpfiles

bindkey -v
bindkey '^w' backward-kill-word

bindkey '^P' up-history
bindkey '^N' down-history
