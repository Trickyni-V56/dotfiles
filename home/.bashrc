# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

#   bash history stuff
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alertrm "$1" && echo "Removed file: $1"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# changes manpage pager
# export PAGER='glow'
export LESS="-R"

#--------------
#   completion stuff

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
# case-insensitive completion
bind -s 'set completion-ignore-case on' > /dev/null
#--------------

#   paths
export XBPS_DISTDIR=~trickyni/git/void-packages
export PATH="$PATH:~/.shells"
export PYTHONPATH="${PYTHONPATH}:~/.shells"
export EDITOR='/usr/bin/micro'
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#   eza
export EZA_ICONS_AUTO=always

#   FZF
export FZF_DEFAULT_OPTS_FILE=~/.config/fzf/fzf-config
eval "$(fzf --bash)"

#   starship
eval "$(starship init bash)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

#   homeshick
source "$HOME/.homesick/repos/homeshick/homeshick.sh"

#   thefuck
eval $(thefuck --alias)

#   zoxide
eval "$(zoxide init bash)"

echo -e -n "\x1b[\x35 q" # changes to blinking bar

# export RESTIC_REPOSITORY=~/restic-repo
# export RESTIC_PASSWORD=reallystrongpassword

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
