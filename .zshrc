setopt hist_ignore_all_dups
setopt hist_ignore_space
export HISTSIZE=99999999999
export SAVEHIST=$HISTSIZE
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

ZSH_TMUX_AUTOSTART="false"
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
#ZSH_THEME="typewritten"
TYPEWRITTEN_CURSOR="block"
CASE_SENSITIVE="true"
export UPDATE_ZSH_DAYS=5

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

plugins=(pyenv macos colored-man-pages aws git tmux fzf)

source $ZSH/oh-my-zsh.sh

less_termcap[md]="${fg_bold[blue]}" # this tells less to print bold text in bold blue

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

#GO
export GOPATH=/Users/fernando/Development/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

export PATH=$PATH:/usr/local/bin

# Docker aliases
alias dr="docker run"
alias db="docker build"
alias dpsa="docker ps -a"
alias dps="docker ps"
alias di="docker images"

#Git
alias unstage="git reset HEAD"

#Glances 
export PATH=$PATH:~/glances/bin

#md5
alias md5q="md5 -q" 
export PATH="/usr/local/sbin:$PATH"
alias tf="terraform"
alias md5sum="md5 -r"

# handy k8s
alias k="kubectl"
#alias kcfg="kubectl config"
#alias contexts="kubectl config get-contexts"
#alias use-context="kubectl config use-context"
#alias kd="kubectl describe"
#alias kdel="kubectl delete"
#alias ked="kubectl edit"
#alias kx="kubectl exec -ti"
export EDITOR="nvim"
alias nano="nvim"

back() {
  cd -
}

export BAT_THEME="TwoDark"
alias cat="bat"

export PATH="/usr/local/opt/openjdk/bin:$PATH"
alias vbm=VBoxManage

alias tf="terraform"
alias startkali="vbm startvm a2d99864-4e0f-4e91-91b0-70ce661ab865"

alias config='GIT_WORK_TREE="$HOME" GIT_DIR="$HOME"/Development/dotfiles git -c status.showUntrackedFiles=no'
nd() { nano -m -c "$HOME/$(config ls-tree --full-tree --name-only -r HEAD | fzf)" }
alias cst="config status"

# 1password
1pon() {
  eval $(op signin --account hivemindtechnologiesag)
}

1poff() {
  op signout
  unset OP_SESSION_hivemindtechnologiesag
}

eval "$(zoxide init zsh)"

alias ss="sudo lsof -P -i TCP -s TCP:LISTEN"
alias grep="rg"
alias ls="lsd --icon never"
alias payone-vpn="op read op://Private/OpenConnect/password | openconnect-route53-vpn-splitter -u f.mendoza -p payone"
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/usr/local/opt/openssl@3/bin:$PATH"
source ~/powerlevel10k/powerlevel10k.zsh-theme
