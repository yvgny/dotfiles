# Dotfiles setup (https://news.ycombinator.com/item?id=11071754)
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Useful aliases
alias gs="git status"
alias gc="git commit"
alias gca="git commit -a"
alias gcam="git commit -a -m"
alias gp="git push"
alias gl="git log --graph --oneline"
alias ls="ls -G"
alias glog="git log --all --decorate --oneline --graph"
alias la="ls -Fla"

alias weather='function _weather(){ curl "v2.wttr.in/$1"; };_weather'

# Disable terminal flow control
stty start undef stop undef

# Vim-style command line editing
set -o vi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
