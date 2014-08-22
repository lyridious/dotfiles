# IT'S DANGEROUS TO GO ALONE! TAKE THIS.

path=(
    /usr/local/bin
    ~/Library/Python/2.7/bin
    ~/.gem/ruby/2.0.0/bin
    ~/.npm-packages/bin
    $path
)

if [[ $TERM != "screen" ]]; then
    tmux
fi

if [[ $OSTYPE == darwin* ]]; then
    alias vim="reattach-to-user-namespace vim"
    alias mvim="reattach-to-user-namespace mvim"
fi

zmodload zsh/complist
autoload -Uz compinit
autoload -Uz bashcompinit
compinit -i
bashcompinit
source /usr/local/etc/bash_completion.d/npm
source /usr/local/etc/bash_completion.d/youtube-dl.bash-completion

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/helpfiles

bindkey -v
bindkey '^w' backward-kill-word

bindkey '^P' up-history
bindkey '^N' down-history
