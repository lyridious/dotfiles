# IT'S DANGEROUS TO GO ALONE! TAKE THIS.

path=(
    /usr/local/bin
    ~/Library/Python/2.7/bin
    ~/.gem/ruby/2.0.0/bin
    ~/.npm-packages/bin
    $path
)

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/helpfiles

bindkey -v
bindkey '^w' backward-kill-word

bindkey '^P' up-history
bindkey '^N' down-history
