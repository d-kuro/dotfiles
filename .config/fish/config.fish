alias ls 'ls -aG'
alias grep 'grep --color=auto'
# ghq alias
alias ghqcd 'cd (ghq list --exact --full-path (ghq list | fzf))'
# git alias
alias gitswitch 'git switch (git branch --format "%(refname:short)" | fzf)'
alias gitbranchd 'git branch -D (git branch --format "%(refname:short)" | fzf)'

# PATH
set -x PATH /usr/local $PATH
set -x PATH /usr/local/bin $PATH
set -x PATH $HOME/bin $PATH

# Go
set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin $PATH

# Rust
set -x PATH $HOME/.cargo/bin $PATH

# Krew
set -x PATH $PATH $HOME/.krew/bin

starship init fish | source
