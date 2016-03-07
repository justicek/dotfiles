# Path to your oh-my-zsh installation.
export ZSH=/home/pie/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="nicoulaj"

# enables command auto-correction.
ENABLE_CORRECTION="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(themes command-not-found dircycle dirhistory git mvn redis-cli screen spring sublime themes wd web-search zsh-256color)

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/share/node:/home/pie/scripts:~/scripts/standards:~/npm-global/bin:/home/pie/Downloads/vert.x-3.1.0/bin:/home/pie/static"
# export MANPATH="/usr/local/man:$MANPATH"

## oh my zsh
source $ZSH/oh-my-zsh.sh

## contains aliases and things common to all shells
source ~/.sh-common
## enable better colors
source ~/static/gruvbox/gruvbox_256palette.sh

setopt AUTO_CD

## save all history commands
LASTCOMMAND=
LASSTCOMMANDX=
LOGFILE="$HOME/.logs/commands.log"

save_issued_command() {
    LASTCOMMANDX=`date`"] $1"
    LASTCOMMAND="\n$LASTCOMMANDX"
    if [ -n "$LOGFILE" ] ; then
        if [ ! -d `dirname ${LOGFILE}` ] ; then
            mkdir -p `dirname ${LOGFILE}`
        fi

        if [ ! -e "$LOGFILE" ] ; then 
            touch "$LOGFILE"
        fi

        if [ -w "$LOGFILE" ] ; then
            echo "$TTY) $LASTCOMMANDX" >> $LOGFILE
        fi
    fi
}

preexec() {
    save_issued_command $1
}

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

