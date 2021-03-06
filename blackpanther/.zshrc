# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/pandu/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# sources
source /etc/profile.d/vte.sh

# exports
export EDITOR=/bin/subl

# aliases
alias r="ranger"
alias htop="htop --tree"
alias mounts="mount | grep /dev/nvme"

# pacman aliases
alias pacc="pacman -Q | wc -l"
alias pacl="pacman -Q | less"
alias paci="sudo pacman -S"
alias pacr="sudo pacman -R"
alias pacu="sudo pacman -Sy"
alias pacac="cat /var/log/pacman.log | grep -i installed | sort -r | less"
alias pacclean="sudo pacman -Rns $(pacman -Qtdq)"

# config files
alias cfi3="subl ~/.config/i3/config"
alias cfi3b="subl ~/.i3blocks.conf"
alias cft="subl ~/.config/termite/config"
alias cfz="subl ~/.zshrc"
alias cfr="subl ~/.config/ranger/rc.conf"

# git aliases
alias gits="git status"
alias gita="git add"
alias gitc="git commit"
alias gitp="git push"
alias gitd="git diff"
alias gitb="git branch"

#jetbrains aliases
alias pycharm="nohup ~/jetbrains/pycharm/bin/pycharm.sh > /dev/null &"
alias clion="nohup ~/jetbrains/clion/bin/clion.sh > /dev/null &"
alias android-studio="nohup ~/jetbrains/android-studio/bin/studio.sh > /dev/null &"

# mount aliases
alias mountwinc="sudo mount /dev/nvme0n1p3 /home/pandu/mounts/winc"
alias umountwinc="sudo umount /home/pandu/mounts/winc"
alias mountwind="sudo mount /dev/nvme0n1p4 /home/pandu/mounts/wind"
alias umountwind="sudo umount /home/pandu/mounts/wind"

# ssh aliases
alias sshkrishna="nohup xterm -e ssh  yashasvi@10.129.2.170 > /dev/null &"

# sshfs aliases
alias sshfskrishna="sshfs /home/pandu/sshfs/krishna yashasvi@10.129.2.170:"
alias umsshfskrishna="fusermount -u /home/pandu/sshfs/krishna"
