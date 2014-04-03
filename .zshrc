ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

DISABLE_AUTO_UPDATE="true"

# Example format: plugins=(rails git textmate ruby lighthouse)

plugins=(git bundler)

source $ZSH/oh-my-zsh.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
# Customize to your needs...
export PATH=/usr/local/bin:$PATH
#export GOROOT=/usr/local/go
#export PATH=$GOROOT/bin:$PATH

RPROMPT="%{$fg[cyan]%}%m%{$reset_color%}"
export CDPATH=.:~:~/Documents/repositories

# disable autocorrect
unsetopt correct
unsetopt correct_all

# solve cd slowness problem
unsetopt cdablevars

alias gerritp="git push origin HEAD:refs/for/master"
