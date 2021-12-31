[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

ZSH_TMUX_AUTOSTART="false"
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="typewritten"
TYPEWRITTEN_CURSOR="block"
CASE_SENSITIVE="true"
export UPDATE_ZSH_DAYS=5

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git tmux fzf)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

#GO
export GOPATH=/Users/fernando/Development/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

eval "$(pyenv init -)"

export PATH=$PATH:/usr/local/bin

# Docker aliases
#alias dr="docker run"
#alias db="docker build"
#alias dpsa="docker ps -a"
#alias dps="docker ps"
#alias di="docker images"

#Git
alias unstage="git reset HEAD"

#Glances 
export PATH=$PATH:~/glances/bin

#md5
alias md5q="md5 -q" 
export PATH="/usr/local/sbin:$PATH"
alias tf="terraform"
#alias md5sum="md5 -r"

# handy k8s
#alias k="kubectl"
#alias kcfg="kubectl config"
#alias contexts="kubectl config get-contexts"
#alias use-context="kubectl config use-context"
#alias kd="kubectl describe"
#alias kdel="kubectl delete"
#alias ked="kubectl edit"
#alias kx="kubectl exec -ti"
export EDITOR="nano -m -c"

#alias knrd="sudo ~/.tools/vpn.sh"

back() {
  cd -
}

#alias a="az"

export BAT_THEME="TwoDark"
alias cat="bat"

#alias unstage="git reset HEAD"
alias gfp="git fetch -p"

PROMPT_BACKUP=$PROMPT

# AWS
function aws_prof {
  source _awsp
  local profile="${AWS_PROFILE:=default}"
  PROMPT="%{$fg_bold[blue]%}aws:(%{$fg[yellow]%}${profile}%{$fg_bold[blue]%})%{$reset_color%} "$PROMPT_BACKUP
}

function aws_done {
  PROMPT=$PROMPT_BACKUP
}

alias awsp="aws_prof"
alias fertig="aws_done"

export PATH="/usr/local/opt/openjdk/bin:$PATH"
alias vbm=VBoxManage

alias tf="terraform"
alias startkali="vbm startvm a2d99864-4e0f-4e91-91b0-70ce661ab865"

alias config='GIT_WORK_TREE="$HOME" GIT_DIR="$HOME"/Development/dotfiles git -c status.showUntrackedFiles=no'
nd() { nano -m -c "$HOME/$(config ls-tree --full-tree --name-only -r HEAD | fzf)" }
alias cst="config status"

# 1password
1pon() {
  eval $(op signin hivemindtechnologiesag)
}

1poff() {
  op signout
  unset OP_SESSION_hivemindtechnologiesag
}

alias payone-vpn="op get item "OpenConnect" --fields password | openconnect-route53-vpn-splitter -u f.mendoza -p payone"
