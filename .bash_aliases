# vim: set ft=sh:
MOST=`which most`

case $(uname -s) in
    Linux)
        alias ls='ls --color=auto'
        alias la='ls -A'
        ;;
    Darwin|FreeBSD)
        alias ls="ls -GFSr"
        alias la="ls -AFSr"
        alias vi="vim"
        ;;
esac

alias c='clear'
alias l='ls'
alias h='history'

alias grep='grep --color=auto --exclude=*\.swp'
alias g='grep -rin'

alias a='ack -i'
alias a_ig='ack --ignore-dir=vendor,node_modules -i'

alias v='vim'
alias vi='vim'

alias tmux="tmux -2"
alias tat='tmux attach -t'

alias rm='rm -i'
alias lm='ls -al'
alias ll="ls -ahlF"
alias today="date '+%Y%m%d'"
alias here='cd ~/${PWD#*/win}'
alias findswp="find . -name '*.swp'"
alias delswp="findswp; find . -name '*.swp' | xargs rm"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'


# GIT
alias gst='git status'
alias gdf='git diff'
alias gad='git add'
alias gadp='git add -p'
alias gl='git log'
alias gco='git checkout'
alias gpu='git pull'
alias gcm='git commit -m'
alias gcherry="git cherry-pick"
alias amend='git commit --amend'
alias mm='git merge master --no-ff'

# PHP Develop
alias composer="php -d allow_url_fopen=On ~/bin/composer.phar"
alias composerload="composer dumpautoload"

#PIXNET alias Service
alias tolib='cd /net/aqua/account/pixuser/win/work/pixlibrary/'
alias toco='cd ~/work/pixcore-php/Pix'
alias towork='cd ~/work/'
alias todev='cd ~/work/pixdev/user/win'
alias event='cd ~/work/pixevents/pixnet'

function ureport {
    phpunit --coverage-html ~/WWW/phpunit/$1
}

function phab {
    php ~/tool/pbr_export.php
}

function checknum {
    php ~/tmp/checkNum.php
}
function likewin {
    php ~/tool/win.php $1
}

function phpwin {
    php -l $1
    phpcs $1
}

function go {
    if [ "$2" == "ws" ]
    then
        cd ~/work/pix$1/webdata/services
    elif [ "$2" == "wc" ]
    then
        cd ~/work/pix$1/webdata/controllers
    elif [ "$2" == "wl" ]
    then
        cd ~/work/pix$1/webdata/libs
    elif [ "$2" == "wv" ]
    then
        cd ~/work/pix$1/webdata/views
    elif [ "$2" == "m" ]
    then
        cd ~/work/pix$1/models
    elif [ "$2" == "s" ]
    then
        cd ~/work/pix$1/services
    else
        cd ~/work/pix$1
    fi
}
