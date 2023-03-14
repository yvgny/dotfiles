# Dotfiles setup (https://news.ycombinator.com/item?id=11071754)
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Useful aliases
alias gs="git status"
alias gc="git commit -sS"
alias gca="git commit -sS -a"
alias gcam="git commit -sS -a -m"
alias gp="git push"
alias gl="git log --graph --oneline"
alias ls="ls -G"
alias glog="git log --all --decorate --oneline --graph"
alias la="ls -Fla"
# Clean all (merged) local branch whose remote branch has been deleted
alias gclean="git branch -v | awk '{ if (\$3 == \"[gone]\") { system(sprintf(\"git branch -d %s\", \$1)) } }'"

alias weather='function _weather(){ curl "v2.wttr.in/$1"; };_weather'

# Disable terminal flow control
stty start undef stop undef

# Vim-style command line editing
set -o vi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

export LC_CTYPE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
. "$HOME/.cargo/env"

LOKI_ADDR=https://logz.dev.adaptivespace.io
