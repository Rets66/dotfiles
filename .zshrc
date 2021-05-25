# Key repeat
# normal minimum is 15 (225 ms)
defaults write -g InitialKeyRepeat -int 12
# normal minimum is 2 (30 ms)
defaults write -g KeyRepeat -int 1

# init config
ssh-add -K ~/.ssh/id_rsa > /dev/null 2>&1
export EDITOR=nvim
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# key bind like emacs command mode
bindkey -e

# Compliment
autoload -U compinit;

# Alias
# General
alias ..2="cd ../../"
alias ..3="cd ../../../"
alias ..4="cd ../../../../"
alias ..5="cd ../../../../../"
alias tf="terraform"
alias genp="cat ~/.ssh/p.txt | tr -d '\n' | pbcopy"
alias here="pwd | pbcopy"
alias e="exa"
alias zrc="source ~/.zshrc"
alias vrc="source ~/.config/nvim/init.vim"
alias rf="rm -rf"
alias vim="nvim"
alias python="python3"
alias rain="rainbowstream"
alias vol="/usr/local/Cellar/volatility/2.6.1_2/bin/vol.py"
alias zup="source ~/.zshrc"
alias vup="source ~/.config/nvim/init.vim"

# Git
alias line="git log --graph --oneline -n"
alias gich="git checkout"
alias giad="git add"
alias gico="git commit -m"
alias com="git commit -m"
alias gibr="git branch"
alias gipu="git pull"
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
alias k-show="kubectl config current-context"
alias k-use="kubectl config use-context"
alias k-list="kubectl config get-contexts | awk '{print \$2}'"
alias k-get="kubectl get"
alias ym="yamllint"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
export PATH=$PATH:$HOME/.cargo/bin
export GOROOT=/usr/local/opt/go/libexec
export PATH="$GOROOT/bin:$PATH"
typeset -U path PATH # delete repeated PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/s09146/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/s09146/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/s09146/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/s09146/google-cloud-sdk/completion.zsh.inc'; fi

# FZF configuration
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
