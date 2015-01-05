export TERM=xterm-16color
export PATH="~/Dropbox/.bin:/usr/local/bin:/usr/local/sbin:~/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
alias v='vim -f'
alias b='v ~/.bash_profile && . ~/.bash_profile'
alias s='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
export EDITOR='vim -f'
export VISUAL=s
. ~/.nvm/nvm.sh
alias l='ls -alGh'
shopt -s autocd
alias i='curl wtfismyip.com/json'
. ~/Dropbox/tmuxinator.bash
alias ls='ls -G'
alias m='mkdir -p'
function mc(){
  m $1
  cd $1
}
alias c=curl
function pgd {
  git diff --no-ext-diff --quiet --exit-code &> /dev/null || echo "*"
}
function pgb {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(pgd))/"
}
export CLICOLOR=1
export PS1="\h\[\033[32m\]:\[\033[34m\]\w\[\033[00m\]\$(pgb)\$ "
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE=UTF-8
alias gs='git status'
alias n=node
alias o=open
function vpn {
  cd ~/Dropbox/vpn; sudo openvpn $1.ovpn
}
alias gi='git init'
alias ga='git add'
alias gc='git commit -m'
alias gs='git status'
alias gr='git remote'
alias gra='git remote add'
alias grv='git remote -v'
alias gp='git push'
alias gpu='git push -u'
alias gac='git add . && git commit -m'
alias go='git chekout'
alias gob='git checkout -b'
alias telnet='telnet -e ^d'
