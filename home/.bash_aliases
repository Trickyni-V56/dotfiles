#!/bin/bash
alias lockdown='sudo rfkill block all'
alias lockdown-lift='sudo rfkill unblock all'
alias shut='sudo poweroff'
alias open='xdg-open .'
alias grep='grep --color=auto'
alias rm='rm -i'
alias cat='bat'
alias reload='source ~/.bashrc && echo "ka-clunk~"'
alias bashr='command -v kate &>/dev/null && kate ~/.bash_aliases || micro ~/.bash_aliases'
alias lock='XSECURELOCK_AUTH_WARNING_COLOR=#E86045 XSECURELOCK_AUTH_BACKGROUND_COLOR=#3b3228 XSECURELOCK_AUTH_FOREGROUND_COLOR=#AFD2E9 xsecurelock'

#   void-linux
if grep void /etc/os-release >/dev/null; then
    alias invoke='sudo xbps-install'
    alias banish='sudo xbps-remove'
    alias commune='sudo xbps-install -Su'
    alias misogi='sudo xbps-remove -oO' #(autoremoves junk)
    alias scry='xbps-query -R -p homepage -s'
    # alias daemon='sudo ~trickyni/.shells/daemon/daemon.sh'
#   daemons
    alias daemonlist-active='sv s /var/service/*'
    alias daemonlist-available='ls -1 /etc/sv/'
    alias suspend='loginctl suspend'

fi
#   Arch linux
if grep arch /etc/os-release >/dev/null; then
    alias invoke='sudo pacman -S'
    alias banish='sudo pacman -R'
    alias commune='sudo pacman -Syu'
    alias suspend='systemctl suspend'
    #alias misogi='sudo xbps-remove -oO' #(autoremoves junk)
fi

#   ls command replacement
alias {eza,ls}='eza -1 --group-directories-first'
alias lt='eza -T'
alias ll='eza -lao --no-time --no-permissions --no-user --group-directories-first'
alias la='eza -1a --all --group-directories-first'

complete -F __zoxide_z_complete -o filenames -- jmp # uses the output of the 'cd' function as the autocomplete for 'jmp()'
alias bk='cd .. && eza'
alias cd='z'
alias dls='cd ~/Downloads'

# docker
alias whale='sudo docker compose'
alias whaleup='sudo docker compose up -d'
alias whaledown='sudo docker compose down'
alias whaleseesaw='sudo docker compose down && sudo docker compose up -d'

#-------   home setup   ----------------------------------------------------------------------

if [[ "$(cat /etc/hostname)" == "IrregularNotes" ]]; then
#   Baseline
alias jotm='bluetoothctl connect AC:80:0A:2E:C9:07'
alias hachisync='ssh -L 8385:localhost:8384 hachiko'

#   yt-dlp
alias ytdlp='yt-dlp'
alias ytmp3='yt-dlp --config-location ~/.config/yt-dlp/mp3'


#   git
alias gitscum='git add . && git commit -m "0" && git push && echo -e "\033[93mgit successfully scummed\033[0m"'
alias homescum='homeshick cd dotfiles && git add . && git commit -m "0" && git push && echo -e "\033[93mhome successfully scummed\033[0m"'

#	misc
alias matrix='cmatrix -abcsx -u 3'
fi

#   taskwarrior
alias todo='task add'
alias now='task now'
alias plate='task plate'

#   connect to stuff
alias mapscii='telnet mapscii.me'
alias weather='curl wttr.in?0Q'
alias forecast='curl wttr.in?FQ2n'
alias moonphase='curl wttr.in/moon?QFT'

#   other
alias trash='trash-cli-wrapper.sh'
alias untar='sudo tar -xvzf'
alias [fukc,fcuk,fucj]='fuck'
alias sundown='echo $(sunwait list set $(cat ~/.location) civil)":00"'
alias dust='dust -riC'
alias watch='viddy'
alias enkidu='ncdu --color dark'
alias diff='delta'
timer(){
    clear && countdown $1 && cfonts "$2" -c candy -f tiny
}

