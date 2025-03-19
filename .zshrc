eval "$(oh-my-posh init zsh --config $HOME/github/dotvim/capr4n.omp-m.json)"

export TERM="xterm-256color"

ZSH_CUSTOM="$ZSH/custom"
ZSH_DISABLE_COMPFIX=true


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export VISUAL=vim
export EDITOR="$VISUAL"
export PAGER="most -s"

# aliases
alias a='ack'
alias tmux="tmux -2"
alias today="date '+%Y%m%d'"
alias h='history'
alias g='grep -rin'

## EXA
alias ls="ls --color=auto"
alias ll="exa -lh --git --sort=type --icons"
alias tree="exa -T -L 2 --icons"
alias dir='ls -l'

alias help='tldr'
alias json='fx'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias findswp="find . -name '*.swp'"
alias delswp="findswp; find . -name '*.swp' | xargs rm"

alias lm='ls -al'
alias rm='rm -i'
alias c='clear'
alias tat='tmux attach -t'
alias lcat='lolcat'


## Python
alias python='python3'
alias py3='python3'

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
alias gcp='git cherry-pick'
alias mm='git merge master --no-ff'

# k8s
alias klog='kubectl logs -f --tail=5'
alias kexec='kubectl exec -it'
alias kpods='kubectl get pods'


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# python env
export PYTHONPATH=${PWD}


# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"


### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"

ZINIT_NO_AUTHENTICATION=1
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zsh-users/zsh-syntax-highlighting \
    zsh-users/zsh-autosuggestions \
    zsh-users/zsh-completions \
    Aloxaf/fzf-tab \
    djui/alias-tips \
    MichaelAquilina/zsh-you-should-use \
    jeffreytse/zsh-vi-mode


zinit snippet OMZ::plugins/virtualenv/virtualenv.plugin.zsh

### End of Zinit's installer chunk
#
