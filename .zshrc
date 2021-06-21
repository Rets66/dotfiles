# normal minimum is 15 (225 ms)
defaults write -g InitialKeyRepeat -int 12
# normal minimum is 2 (30 ms)
defaults write -g KeyRepeat -int 1

# set ssh key
ssh-add -K ~/.ssh/id_rsa > /dev/null 2>&1

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# emacs command mode like key bind
bindkey -e

# Compliment
autoload -U compinit;

# Alias
alias .2="cd ../../"
alias .3="cd ../../../"
alias .4="cd ../../../../"
alias .5="cd ../../../../../"
alias tf="terraform"
alias genp="cat ~/.ssh/p.txt | tr -d '\n' | pbcopy"
alias here="pwd | pbcopy"
alias e="exa"
alias zrc="source ~/.zshrc"
alias vrc="source ~/.config/nvim/init.vim"
alias rf="rm -rf"
alias vim="nvim"
alias python="python3"
#alias pip="pip3"
alias rain="rainbowstream"
alias vol="/usr/local/Cellar/volatility/2.6.1_2/bin/vol.py"
alias zup="source ~/.zshrc"
alias vup="source ~/.config/nvim/init.vim"

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
export PATH=$PATH:$HOME/.cargo/bin
export EDITOR=nvim
export GOROOT=/usr/local/opt/go/libexec
export GOPATH="$HOME/go"
export PATH="$GOROOT/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
typeset -U path PATH # 重複パスを削除

# pyenv
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/s09146/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/s09146/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/s09146/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/s09146/google-cloud-sdk/completion.zsh.inc'; fi

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

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# go-powerline
#function powerline_precmd() {
#    PS1="$($GOPATH/bin/powerline-go -error $? -jobs ${${(%):%j}:-0})"
#
#    # Uncomment the following line to automatically clear errors after showing
#    # them once. This not only clears the error for powerline-go, but also for
#    # everything else you run in that shell. Don't enable this if you're not
#    # sure this is what you want.
#
#    #set "?"
#}
#
#function install_powerline_precmd() {
#  for s in "${precmd_functions[@]}"; do
#    if [ "$s" = "powerline_precmd" ]; then
#      return
#    fi
#  done
#  precmd_functions+=(powerline_precmd)
#}
#
#if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
#    install_powerline_precmd
#fi
