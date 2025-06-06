#!/bin/bash

alias obsidian='obsidian --ozone-platform=wayland'

#   core
alias shut='sudo poweroff'
alias o='xdg-open'
alias e='micro'
alias y='yazi'
alias bk='cd ..'
alias reload='source ~/.bashrc && echo "ka-clunk~"'
alias bashr='command -v kate &>/dev/null && kate ~/.bash_aliases || micro ~/.bash_aliases'

#   security
alias lockdown='sudo rfkill block all'
alias lockdown-lift='sudo rfkill unblock all'
alias lock='swaylock'

#   renames
alias dust='dust -riC'
alias watch='viddy'
alias cat='bat'
alias enkidu='ncdu --color dark'
alias diff='delta'
alias cd='z'
alias grep='grep --color=auto'
alias rm='rm -i'
alias untar='sudo tar -xvzf'

#   Arch linux
if grep arch /etc/os-release >/dev/null; then
    alias invoke='sudo pacman -Su'
    alias banish='sudo pacman -R'
    alias commune='sudo pacman -Syu'
fi

#   ls
alias {eza,ls}='eza -1 --group-directories-first'
alias lt='eza -T'
alias ll='eza -laohb --no-time --no-permissions --group-directories-first'
alias la='eza -1a --all --group-directories-first'

#   docker
alias whale='sudo docker compose'
alias whaleup='sudo docker compose up -d'
alias whaledown='sudo docker compose down'
alias whaleseesaw='sudo docker compose down && sudo docker compose up -d'

#   git
alias gitscum='git add . && git commit -m "0" && git push && echo -e "\033[93mgit successfully scummed\033[0m"'

#   Devices
alias jotm='bluetoothctl connect AC:80:0A:2E:C9:07'

#   taskwarrior
alias todo='task add'
alias now='task now'

#-------   home setup   ----------------------------------------------------------------------
if [[ "$(cat /etc/hostname)" == "IrregularNotes" ]]; then
#   yt-dlp
alias ytdlp='yt-dlp'
alias ytmp3='yt-dlp --config-location ~/.config/yt-dlp/mp3'

#   git
alias homescum='homeshick cd dotfiles && git add . && git commit -m "0" && git push && echo -e "\033[93mhome successfully scummed\033[0m"'
fi

#   hachiko
alias hachisync='ssh -L 8385:localhost:8384 hachiko'
alias hachiko-login='ssh root@192.168.0.3'

#   pablotronica
alias pablosync='ssh -L 8386:localhost:8384 pablotronica'
