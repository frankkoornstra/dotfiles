export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin

# Path to your oh-my-zsh configuration.
ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="frank"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras ssh-agent last-working-dir sudo web-search docker docker-compose)

source $ZSH/oh-my-zsh.sh

# zsh completion
fpath=(~/.zsh-completion/src $fpath)

# Commonly used dirs
cdpath=($HOME/Projects $HOME/Downloads)

# So gpg can ask for passwords
export GPG_TTY=$(tty)

# useful aliases
alias git-kablooy="git branch | grep -v develop | grep -v master | grep -v \* | xargs git branch -D"
alias grbm="git rebase -i origin/master"
alias grbd="git rebase -i origin/develop"
alias lsl="ls -alh"

alias dc="docker-compose "
alias dcu="docker-compose up -d "
alias dcui="docker-compose up "
alias dcs="docker-compose stop "
alias dcr="docker-compose restart "
alias dcb="docker-compose build "
