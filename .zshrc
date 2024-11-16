# ---------------
# Alias
# ---------------
alias ghqcd='cd $(ghq list --exact --full-path $(ghq list | fzf))'
alias gitswitch='git switch $(git branch --format "%(refname:short)" | fzf)'
alias gitbranchd='git branch -D $(git branch --format "%(refname:short)" | fzf)'
alias la="eza -a --git -g -h --oneline"
alias ls="eza"
alias vim="nvim"

# ---------------
# Config
# ---------------
ISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt auto_list
setopt auto_menu
setopt list_types
setopt nobeep
setopt prompt_subst
setopt magic_equal_subst
setopt auto_param_slash
autoload -Uz compinit
compinit
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:descriptions' format '[%d]'

# ---------------
# PATH
# ---------------
export PATH=$PATH:/usr/local
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:$HOME/bin
# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
# Rust
export PATH=$PATH:$HOME/.cargo/bin
# Node
export NPM_CONFIG_PREFIX=${HOME}/.npm-global
export PATH=$NPM_CONFIG_PREFIX/bin:$PATH
# Krew
export PATH=$PATH:$HOME/.krew/bin
# 1Password
export SSH_AUTH_SOCK=~/.1password/agent.sock
# aqua
export PATH="${AQUA_ROOT_DIR:-${XDG_DATA_HOME:-$HOME/.local/share}/aquaproj-aqua}/bin:$PATH"
export AQUA_GLOBAL_CONFIG=${AQUA_GLOBAL_CONFIG:-}:${XDG_CONFIG_HOME:-$HOME/.config}/aquaproj-aqua/aqua.yaml
# disable system git config
export GIT_CONFIG_SYSTEM=''

function fzf-select-history() {
    BUFFER=$(history -n -r 1 | fzf --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle reset-prompt
}
zle -N fzf-select-history
bindkey '^r' fzf-select-history

# ---------------
# Brew
# ---------------
eval "$(/opt/homebrew/bin/brew shellenv)"

# ---------------
# Enable kubectl completion
# ---------------
source <(kubectl completion zsh)

# ---------------
# Starship.rs
# ---------------
eval "$(starship init zsh)"

# ---------------
# sheldon
# ---------------
eval "$(sheldon source)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi
