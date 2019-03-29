ZSH_TMUX_AUTOSTART="true"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/fernando/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="amuse"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=5

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nano'
else
   export EDITOR='nano'
fi

# nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

#GO
export GOPATH=/Users/fernando/Development/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

eval "$(pyenv init -)"

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

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/fernando/.nvm/versions/node/v8.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/fernando/.nvm/versions/node/v8.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/fernando/.nvm/versions/node/v8.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/fernando/.nvm/versions/node/v8.5.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh


#md5
alias md5q="md5 -q" 
export PATH="/usr/local/sbin:$PATH"
alias tf="terraform"
alias md5sum="md5 -r"

# handy k8s
alias k="kubectl"
alias kcfg="kubectl config"
alias contexts="kubectl config get-contexts"
alias use-context="kubectl config use-context"
alias kd="kubectl describe"
alias kdel="kubectl delete"
alias ked="kubectl edit"
export EDITOR="nano -m"

alias knord="sudo ~/.tools/nordvpn.sh"

back() {
  cd $OLDPWD
}

alias a="az"

export BAT_THEME="TwoDark"
alias cat="bat"

alias unstage="git reset HEAD"
alias gfp="git fetch -p"

alias bruce="saml2aws login -a bruce; export AWS_PROFILE=bruce"
alias wonder="saml2aws login -a wonderwoman; export AWS_PROFILE=wonderwoman"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

