#!/bin/bash
alias lockdown='sudo rfkill block all'
alias lockdown-lift='sudo rfkill unblock all'
alias shut='sudo poweroff'
alias o='xdg-open'
alias e='micro'
alias grep='grep --color=auto'
alias rm='rm -i'

alias reload='source ~/.bashrc && echo "ka-clunk~"'
alias bashr='command -v kate &>/dev/null && kate ~/.bash_aliases || micro ~/.bash_aliases'
alias lock='XSECURELOCK_AUTH_WARNING_COLOR=#E86045 XSECURELOCK_AUTH_BACKGROUND_COLOR=#3b3228 XSECURELOCK_AUTH_FOREGROUND_COLOR=#AFD2E9 xsecurelock'

#   renames
alias dust='dust -riC'
alias watch='viddy'
alias cat='bat'
alias enkidu='ncdu --color dark'
alias diff='delta'

#   void-linux
if grep void /etc/os-release >/dev/null; then
    alias invoke='sudo xbps-install'
    alias banish='sudo xbps-remove'
    alias commune='sudo xbps-install -Su'

fi
#   Arch linux
if grep arch /etc/os-release >/dev/null; then
    alias invoke='sudo pacman -S'
    alias banish='sudo pacman -R'
    alias commune='sudo pacman -Syu'
fi

#   ls command replacement
alias {eza,ls}='eza -1 --group-directories-first'
alias lt='eza -T'
alias ll='eza -lao --no-time --no-permissions --no-user --group-directories-first'
alias la='eza -1a --all --group-directories-first'

alias bk='cd ..'
alias cd='z'

#	docker
alias whale='sudo docker compose'
alias whaleup='sudo docker compose up -d'
alias whaledown='sudo docker compose down'
alias whaleseesaw='sudo docker compose down && sudo docker compose up -d'

#	git
alias gitscum='git add . && git commit -m "0" && git push && echo -e "\033[93mgit successfully scummed\033[0m"'

#-------   home setup   ----------------------------------------------------------------------

if [[ "$(cat /etc/hostname)" == "IrregularNotes" ]]; then
#   Baseline
alias jotm='bluetoothctl connect AC:80:0A:2E:C9:07'

#   yt-dlp
alias ytdlp='yt-dlp'
alias ytmp3='yt-dlp --config-location ~/.config/yt-dlp/mp3'

#   git
alias homescum='homeshick cd dotfiles && git add . && git commit -m "0" && git push && echo -e "\033[93mhome successfully scummed\033[0m"'
fi

#   taskwarrior
alias todo='task add'
alias now='task now'

#   other
alias untar='sudo tar -xvzf'
alias [fukc,fcuk,fucj]='fuck'
alias sundown='echo $(sunwait list set $(cat ~/.location) civil)":00"'

timer(){
    clear && countdown $1 && cfonts "$2" -c candy -f tiny
}

#   hachiko
alias hachisync='ssh -L 8385:localhost:8384 hachiko'
alias hachiko-login='ssh root@192.168.0.3'
