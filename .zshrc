# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="dracula"
ZSH_CUSTOM="$ZSH/custom"
ZSH_DISABLE_COMPFIX=true
plugins=(git zsh-completions zsh-autosuggestions zsh-syntax-highlighting)

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)
source $ZSH/oh-my-zsh.sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export VISUAL=vim
export EDITOR="$VISUAL"
export TERM="xterm-256color"
export PATH="/Users/win/.composer/vendor/bin/:$PATH"
export PAGER="most -s"


# aliases
alias a='ack'
alias tmux="tmux -2"
alias today="date '+%Y%m%d'"
alias h='history'
alias g='grep -rin'
alias l='ls -FGS'
alias ll="ls -ahlF"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias findswp="find . -name '*.swp'"
alias delswp="findswp; find . -name '*.swp' | xargs rm"

alias lm='ls -al'
alias rm='rm -i'
alias dir='ls -l'
alias c='clear'
alias tat='tmux attach -t'

## path
alias towork='cd ~/work/'
alias togit='cd ~/github'
alias topix='cd ~/pixnet'
alias tobe='cd ~/pixnet/be/api/behavior.pixplug.in'

## git
alias gst='git status'
alias gdf='git diff'
alias gad='git add'
alias gadp='git add -p'
alias gl='git log'
alias gco='git checkout'
alias gpu='git pull'
alias gcm='git commit -m'
alias amend='git commit --amend'
alias pa='php artisan'
alias gpr='git pull --rebase origin master'
alias gpv='git pull --rebase origin master'

alias composer="/usr/local/bin/composer.phar"
alias composerload="composer dump-autoload"

# k8s
alias klog='kubectl logs -f --tail=5'
alias kexec='kubectl exec -it'
alias kpods='kubectl get pods'

# PIXNET
alias ssha='ssh win@aqua.srv.pixnet'
alias sshirc='ssh win@irc.pixnet.tw -p222'
alias irc='mosh --ssh="ssh -p 222" win@irc.pixnet.tw'
alias aqua='mosh --ssh="ssh" win@aqua.srv.pixnet'
alias phab='php /Users/win/pixnet/phabricommit'


bindkey -e
bindkey "\e\eOD" backward-word
bindkey "\e\eOC" forward-word


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


export PATH="/usr/local/sbin:$PATH"
source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
export PATH="/usr/local/opt/gettext/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/win/Documents/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/win/Documents/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/win/Documents/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/win/Documents/google-cloud-sdk/completion.zsh.inc'; fi
