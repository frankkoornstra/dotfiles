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
plugins=(git git-extras ssh-agent last-working-dir sudo docker docker-compose kubectl alias-finder gradle thefuck)

source $ZSH/oh-my-zsh.sh

# zsh completion
fpath=(~/.zsh-completion/src $fpath)

# Commonly used dirs
cdpath=($HOME/Projects $HOME/Downloads)

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH
export DOCKER_BUILDKIT=1
alias ffs="sudo !!"

# Git
alias g="git "

# Colored ls
alias ls="ls -alh --color"

# Composer
alias ci="composer install --ignore-platform-reqs --no-scripts "

# Docker
alias d="docker"
alias dc="docker-compose "
alias dcu="docker-compose up -d "
alias dcd="docker-compose down "
alias dcdu="docker-compose down && docker-compose up -d "
alias dcr="docker-compose run "
alias dcb="docker-compsoe build "
alias dcl="docker-compose logs "
alias dclf="docker-compose logs -f "

alias k="kubectl "
