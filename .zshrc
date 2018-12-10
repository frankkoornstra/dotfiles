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
plugins=(git git-extras ssh-agent last-working-dir sudo docker docker-compose)

source $ZSH/oh-my-zsh.sh

# zsh completion
fpath=(~/.zsh-completion/src $fpath)

# Commonly used dirs
cdpath=($HOME/Projects $HOME/Downloads)

# Git
alias git-kablooy="git branch | grep -v develop | grep -v master | grep -v \* | xargs git branch -D"
alias grbm="git rebase -i origin/master"
alias grbd="git rebase -i origin/develop"

# Colored ls
alias lsl="ls -alh"
alias ls="ls -G"

# Directories
alias p="cd ~/Projects"

# Directories
alias p="cd ~/Projects"

# Docker & Docker Compose
alias dc="docker-compose "
alias dcu="docker-compose up -d "
alias dcui="docker-compose up "
alias dcs="docker-compose stop "
alias dcr="docker-compose restart "
alias dcb="docker-compose build "

# Composer
alias ci="composer install --ignore-platform-reqs --no-scripts "
alias cr="composer require --ignore-platform-reqs --no-scripts "
