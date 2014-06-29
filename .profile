#Homebrew
#export PATH="$HOME/Dropbox/Unix/bin:/usr/local/bin:/usr/local/sbin:$PATH"
alias l='ls -alGh'
alias ls='ls -G'
PS1='\u@\h: \W '
shopt -s autocd
#alias up='brew update; brew upgrade; brew doctor; pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip install -U'
alias md='mkdir -p'
alias bcf='vi ~/.profile && source ~/.profile'
#alias st="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
export EDITOR='vi'
alias x='xz -z9evk'
alias myip='curl wtfismyip.com/json'
#alias vpn='DIR=/Users/ph3nx/Shell/cyberghost /Users/ph3nx/Shell/cyberghost/vpn'
#alias p='source ~/Shell/projects.sh open'
#alias pc='sh ~/Shell/projects.sh create'
alias telnet='telnet -e ^d'

export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'

#Git
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

#Ruby
#source "$HOME/.rvm/scripts/rvm"
#export PATH="$PATH:$HOME/.rvm/bin"
#alias gemset='rvm gemset'

#Rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

#Tmuxinator
#source ~/Dropbox/Unix/bash/tmuxinator.bash
#export DISABLE_AUTO_TITLE=true

#Vim
alias vi='vim'
alias vcf='vi ~/.vimrc'
