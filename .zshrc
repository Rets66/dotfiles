# normal minimum is 15 (225 ms)
# defaults write -g InitialKeyRepeat -int 12
# normal minimum is 2 (30 ms)
# defaults write -g KeyRepeat -int 1

# Oh-My-Posh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# emacs command mode like key bind
bindkey -e
# Compliment
autoload -zU compinit && compinit
zstyle ':completion::complete:*' use-cache true
zstyle ':completion:*:default' menu select=1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
setopt auto_param_slash
setopt mark_dirs
# Comliment based on history
# source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Alias
alias .2="cd ../../"
alias .3="cd ../../../"
alias .4="cd ../../../../"
alias .5="cd ../../../../../"
alias tf="terraform"
alias genp="cat ~/.ssh/p.txt | tr -d '\n' | pbcopy"
alias here="pwd | pbcopy"
alias ll="ls -lha"
alias rf="rm -rf"
alias vim="nvim"
alias python3="/opt/homebrew/opt/python@3.10/bin/python3.10"
alias pip3="/opt/homebrew/opt/python@3.10/bin/pip3"
alias rain="rainbowstream"
alias vol="/usr/local/Cellar/volatility/2.6.1_2/bin/vol.py"
alias zup="source ~/.zshrc && exec $SHELL"
alias vup="source ~/.config/nvim/init.vim"
# alias brew="arch -arm64 brew"

# Github
alias line="git log --graph --oneline -n"
alias l3="git log --graph --oneline -n 3"
alias l4="git log --graph --oneline -n 4"
alias l5="git log --graph --oneline -n 5"
alias gich="git checkout"
alias giad="git add"
alias gico="git commit -m"
alias com="git commit -m"
alias gibr="git branch"
alias gill="git pull"
alias gish="git push"
alias giff="git diff"
alias gire="git rebase"
alias girm="git rebase master"
alias gs="git status"
alias gist="git status"
alias gcm="git commit --amend"
alias ghd="git diff HEAD~ | delta"
alias gcm="git checkout master"
alias grm="git rebase master"
alias grc="git rebase --continue"
alias nb='git checkout -b'
alias gisub="git submodule init; git submodule update --remote --merge"
alias dh="git diff HEAD~"

# Aws
alias get-cid='aws sts get-caller-identity'

# Docker
alias docker_rmi_notag='docker rmi -f $(docker images -f "dangling=true" -q)'

# kubernetes
## kubectl
export PATH="${PATH}:${HOME}/.krew/bin"
alias k="kubectl"
alias ka="kubectl apply"
alias kc="kubectl config"
alias kg="kubectl get"
alias kc-cc="kubectl config current-context"
alias kc-uc="kubectl config use-context"
alias kc-gc="kubectl config get-contexts"
alias kc-sc="kubectl config set-context --current" # --namespace=$(namespace)

alias k-now="kubectl config current-context"
alias k-use="kubectl config use-context"
alias k-list="kubectl config get-contexts | awk '{print \$2}'"
alias k-get="kubectl get"
alias v-apply="kustomize build ./ | k apply -f - -n vela-test"
alias v-delete="kustomize build ./ | k delete -f - -n vela-test"
alias v-none-apply="kustomize build ./ --load-restrictor LoadRestrictionsNone | k apply -f - -n vela-test"
alias v-none-delete="kustomize build ./ --load-restrictor LoadRestrictionsNone | k delete -f - -n vela-test"
alias ym="yamllint"

# Misc
alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport"
alias wifi-on="networksetup -SetAirportpower en0 on"
alias wifi-off="networksetup -SetAirportpower en0 off"
alias perman="perman-aws-vault"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
# Homebrew
export PATH=$PATH:/opt/homebrew/bin
# Rust
export PATH=$PATH:$HOME/.cargo/bin
# nvim
export EDITOR=nvim
# go
export PATH=$PATH:/usr/local/go/bin
export GOPATH="$HOME/go"
export PATH=$PATH:$HOME/go/bin

# universal
# delete overlapped PATH
typeset -U path PATH

# pyenv
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"

# configuration for fzf
# File Open
fe() {
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}

export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/s09146/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/s09146/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '~/google-cloud-sdk/path.zsh.inc' ]; then . '~/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/s09146/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/s09146/google-cloud-sdk/completion.zsh.inc'; fi
if [ -f '~/google-cloud-sdk/completion.zsh.inc' ]; then . '~/google-cloud-sdk/completion.zsh.inc'; fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/s09146/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/s09146/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/s09146/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/s09146/google-cloud-sdk/completion.zsh.inc'; fi
