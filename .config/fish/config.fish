# ls alias
alias ls 'ls -aG'
# ghq alias
alias ghqcd 'cd (ghq list --exact --full-path (ghq list | fzf))'
# git alias
alias gitbd 'git branch --merged|egrep -v "\*|develop|master|main"|xargs git branch -d'
alias gitswitch 'git switch (git branch | sed s/\*//g | sed "s/ //g" | fzf)'
alias gitbranchdelete 'git branch -D (git branch | sed s/\*//g | sed "s/ //g" | fzf)'

# PATH
set -x PATH /usr/local $PATH
set -x PATH /usr/local/bin $PATH
set -x PATH ~/bin $PATH
set -gx PATH $PATH $HOME/.krew/bin

# export
set -x GREP_OPTIONS "--color=always"
set -x LANG "ja_JP.UTF-8"

# Go
set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin $PATH

# github.com/starship/starship
eval (starship init fish)
