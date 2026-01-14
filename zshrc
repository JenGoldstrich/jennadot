export ZSH="$HOME/.oh-my-zsh"
alias detfe='docker exec -t terraform-enterprise-tfe-1'
alias ll='ls -hal'
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh
. /opt/homebrew/etc/profile.d/z.sh
set -o vi
