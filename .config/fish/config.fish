# Alias
alias ls 'ls -aG'
alias grep 'grep --color=auto'
alias desktop 'cd ~/Desktop'
alias ghqcd 'cd (ghq list --exact --full-path (ghq list | fzf))'
alias gitswitch 'git switch (git branch --format "%(refname:short)" | fzf)'
alias gitbranchd 'git branch -D (git branch --format "%(refname:short)" | fzf)'

# PATH
set -x PATH /usr/local $PATH
set -x PATH /usr/local/bin $PATH
set -x PATH $HOME/bin $PATH

# Telling Git about your signing key
set -x GPG_TTY (tty)

# Go
set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin $PATH

# Rust
set -x PATH $HOME/.cargo/bin $PATH

# Krew
set -x PATH $PATH $HOME/.krew/bin

starship init fish | source
