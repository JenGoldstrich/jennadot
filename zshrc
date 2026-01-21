export ZSH="$HOME/.oh-my-zsh"
alias detfe='docker exec -t terraform-enterprise-tfe-1'
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh
. /opt/homebrew/etc/profile.d/z.sh
set -o vi
export PATH=$PATH:$(go env GOPATH)/bin
alias ll='ls -hal'
