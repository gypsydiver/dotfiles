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
export GOPATH=$HOME/Development/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

eval "$(pyenv init -)"

export PATH=$PATH:/usr/local/bin

#Git
alias unstage="git reset HEAD"

#Glances
export PATH=$PATH:~/glances/bin

#md5
alias md5q="md5 -q"
export PATH="/usr/local/sbin:$PATH"
alias tf="terraform"
alias md5sum="md5 -r"

export EDITOR="nano -m -c"

back() {
  cd -
}

export BAT_THEME="TwoDark"
alias cat="bat"

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

alias tf="$HOME/Downloads/terraform"
alias terraform="$HOME/Downloads/terraform"
alias startkali="vbm startvm 7a96ebc1-aa5f-4655-a6c9-eb4ae38d9445"
