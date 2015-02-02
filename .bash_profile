[ -z "$PS1" ] && return
stty -ixon
export PATH='~/.bin:~/.rbenv/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin'
if [[ `uname` == 'Linux' ]]; then
  alias l='ls -alh --color=auto'
  alias ls='ls --color=auto'
  export PATH="$HOME/.parts/autoparts/bin:$PATH"
  eval "$(parts env)"
  export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$(pgb)\$ "
else
  alias ls='ls -G'
  alias l='ls -alhG'
  alias vu='vg up 10a6f3d'
  alias v1='vg ssh 10a6f3d'
  alias vg=vagrant
  export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home'
  alias s='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
  export PS1="\h \[\033[34m\]\w\[\033[00m\]\$(pgb) "
fi
#eval "$(rbenv init -)"
alias v='vim -f'
alias b='v ~/.bash_profile && . ~/.bash_profile'
export EDITOR='vim -f'
export VISUAL='vim -f'
. ~/.nvm/nvm.sh
alias csc='coffee --no-header -bc'
shopt -s autocd
alias c=curl
alias ip='c wtfismyip.com/json'
. ~/.tmuxinator.bash
alias m='mkdir -p'
alias p=python
#alias p='. ~/.bin/p'
alias h=heroku
alias hc='h clone -a'
alias ho='h open'
alias ns='npm start'
function x {
  url=`n ~/Dropbox/projects/xvid/xvid.js $1`
  sd $url
}
function ni {
  npm i --save "~/Dropbox/projects/$1"
}
alias fn='sudo find / -name'
function db {
  if [ -n "$1" ]; then
    psql -c "create database $1"
  else
    echo 'usage: db <dbname>'
  fi
}
alias d=psql
function mc {
  m $1
  cd $1
}
function pgd {
  git diff --no-ext-diff --quiet --exit-code &> /dev/null || echo "*"
}
function pgb {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(pgd))/"
}
export CLICOLOR=1
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
#export LANGUAGE=en_US.UTF-8
#export LC_CTYPE=UTF-8
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
alias gd='git diff'
alias telnet='telnet -e ^d'
function ghc {
  git clone "git@github.com:$1.git"
}
function y {
  o http://gopro.com/daily-giveaway
  o http://www.campus-buddies.de/index
  o http://www.lumosity.com/app/v4/dashboard
}
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
