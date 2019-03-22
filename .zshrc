# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ZSH_THEME="dracula"
ZSH_THEME="powerlevel9k/powerlevel9k"
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
# export PAGER="most -s"

alias color='~/github/colorize/colorize.py'

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/Users/win/.composer/vendor/bin/:$PATH"
# Local MySQL
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/bin/gradle-4.10.2/bin:$PATH"

# aliases
alias a='ack'
alias tmux="tmux -2"
alias today="date '+%Y%m%d'"
alias h='history'
alias g='grep -rin'
alias l='ls -FGS | color'
alias ll='ls -ahlF'

alias cat='bat'
alias help='tldr'

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
alias lcat='lolcat'

## PHP
alias lumen='php -S localhost:8080 public/index.php'
alias pa='php artisan'
alias phpunit='./vendor/bin/phpunit'
alias composer="/usr/local/bin/composer"
alias composerload="composer dump-autoload"

## path
alias towork='cd ~/work/'
alias togit='cd ~/github'

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
alias gpr='git pull --rebase origin master'
alias gpv='git pull --rebase origin master'

# k8s
alias klog='kubectl logs -f --tail=5'
alias kexec='kubectl exec -it'
alias kpods='kubectl get pods'

bindkey -e
bindkey "\e\eOD" backward-word
bindkey "\e\eOC" forward-word


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/win/Documents/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/win/Documents/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/win/Documents/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/win/Documents/google-cloud-sdk/completion.zsh.inc'; fi

# Theme Setting
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(time dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

# python env
export PYTHONPATH=${PWD}
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

# Local MySQL
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
