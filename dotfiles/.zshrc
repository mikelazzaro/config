# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="3den"
ZSH_THEME="agnoster"
DEFAULT_USER="mike"
#ZSH_THEME="robbyrussell"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Virtualenvwrapper
#export WORKON_HOME=/media/Storage/python_venv/linux
#export VIRTUALENVWRAPPER_LOG_DIR="$WORKON_HOME"
#export VIRTUALENVWRAPPER_HOOK_DIR="$WORKON_HOME"
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git git-extras git-flow github command-not-found pep8 pip python virtualenvwrapper colored-man aws)
plugins=(git git-extras github command-not-found pep8 pip python virtualenvwrapper colored-man aws)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR=/usr/bin/vim
export EC2_INI_PATH=$HOME/.ansible/ec2.ini
export ANSIBLE_NOCOWS=1
export KEYS=/media/mike/keys/Storage/Keys

# Aliases
alias less="less -R"
alias ssh-forget="ssh-keygen -R"
alias ssh-publicize="ssh-keygen -y -f"

# Include AWS CLI tools
if [ -f ~/.aws/zsh_env ]; then
    source ~/.aws/zsh_env
else
    print "404: ~/.aws/zsh_env not found."
fi

