# # ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
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

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alertrm "$1" && echo "Removed file: $1"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# changes manpage pager
# export PAGER='glow'
export LESS="-R"

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
bind -s 'set completion-ignore-case on'

#####################___paths___#######################################################################
# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# export PATH="$PATH:~/.cargo/bin"
# export PATH="$PATH:~/.software"
export XBPS_DISTDIR=~trickyni/code/void-packages
export PATH="$PATH:~/.shells"
export PYTHONPATH="${PYTHONPATH}:~/.shells"
export FZF_DEFAULT_OPTS_FILE=~/.config/fzf/fzf-config
export EDITOR='/usr/bin/micro'
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

#####################___themes___######################################################################
source ~/.config/lsd/LS_COLORS.sh #invokes LS_colors, sets item colors when listing
#######################################################################################################

# The whole epub2TTS thing
function epub2tts() {
	OLD_IFS=$IFS
	IFS=$'\n' sudo docker run --rm -e COQUI_TOS_AGREED=1 -v /home/ricka:/home/ricka -v "$PWD:$PWD" -v ~/.local/share/tts:/root/.local/share/tts -w "$PWD" ghcr.io/aedocw/epub2tts:release "$@" "$(zenity --file-selection)"
	IFS=$OLD_IFS
}

function ttsserver() {
	if [ $# -eq 0 ]; then
		sudo docker run --rm -it -p 5002:5002 --entrypoint 'python3' ghcr.io/coqui-ai/tts-cpu TTS/server/server.py --list_models 
	else
		sudo docker run --rm -it -p 5002:5002 --entrypoint 'python3' ghcr.io/coqui-ai/tts-cpu TTS/server/server.py --model_name $1
	fi
}
# epub2tts end
######################################################
eval "$(fzf --bash)"import
eval "$(starship init bash)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
eval $(thefuck --alias)

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
