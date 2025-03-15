#!/bin/bash
alias lockdown='sudo rfkill block all'
alias lockdown-lift='sudo rfkill unblock all'
alias shut='sudo poweroff'
alias linguini='setxkbmap us,il ,, grp:alt_shift_toggle && echo -e "LANGUAGE — \033[31mDEPLOYED\033[0m"'
#   devices
alias jotm='bluetoothctl connect AC:80:0A:2E:C9:07'
alias bashr="kate ~/.bash_aliases"

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
fi
#   Arch linux
if grep arch /etc/os-release >/dev/null; then
    alias invoke='sudo pacman -S'
    alias banish='sudo pacman -R'
    alias commune='sudo pacman -Syu'
    #alias misogi='sudo xbps-remove -oO' #(autoremoves junk)
fi

#   ls command replacement
alias {eza,ls}='eza -1 --group-directories-first'
alias lt='eza -T'
alias ll='eza -lao --no-time --no-permissions --no-user --group-directories-first'
alias la='eza -1a --all --group-directories-first'
alias mkv='eza -1 *.mkv '

#   jmp (cd replacement)
jmp(){ #  go to specified path and list its contents

    z "$1" && pwd && eza
}
complete -o default -F _cd jmp # uses the output of the 'cd' function as the autocomplete for 'jmp()'
alias bk='cd .. && eza'

#   fzf
alias playlist='mpv $(fzf -e -q ".mkv$ | .webm$")'
alias downime='cd ~/Downloads && clear && mpv $(fzf -e -q ".mkv$ " --height 40% --border-label "Downloads")'

#   yt-dlp
alias ytdlp='cd ~/Downloads && yt-dlp'
alias ytmp3='cd ~/Downloads && yt-dlp -f ba --extract-audio --audio-format flac --audio-quality 0'

#   mpv
alias play='mpv'
radio(){
    mpv "$1" --no-video
}
#   git
alias gitscum='git add . && git commit -m "0" && git push && echo -e "\033[93mgit successfully scummed\033[0m"'
alias homescum='homeshick cd dotfiles && gitscum'

# docker
alias whale='sudo docker compose'
alias whaleup='sudo docker compose up -d'
alias whaledown='sudo docker compose down'
alias whaleseesaw='sudo docker compose down && docker compose up -d'

#   taskwarrior
alias todo='task add'
alias now='task now'
alias plate='task plate'

#   launchcodes (specifically for launch wrapper-scripts)
alias polybar='~/.config/polybar/polybar-launch.sh'
alias wired='~/.config/wired/wired-launch.sh'

#   CLI aliases (if it runs something- put it here)
alias trash='trash-cli-wrapper.sh'
alias reload='source ~/.bashrc && echo "ka-clunk~"'
alias disk='df -h | grep -E "Filesystem|/dev/nvme0n1p2"' #displays available disk space.
alias F5='echo "savescum :3" && sudo timeshift --create'
alias sampler='sampler -c ~/.config/sampler/config.yml'
#alias matrix="unimatrix -s 95 -a -f -c blue"
alias matrix='cmatrix -abcsx -u 3'
alias audioprofile='wpctl set-profile 91 139'
alias untar='sudo tar -xvzf'

#   command aliases (renames and setups go here!)

alias sundown='echo $(sunwait list set $(cat ~/.location) civil)":00"'\
alias rm='rm -i'
alias open='xdg-open'
alias suspend='loginctl suspend'
alias cat='bat'
alias dust='dust -riC'
alias grep='grep --color=auto'
alias watch='viddy'
alias enkidu='ncdu'
alias diff='delta'
timer(){
    clear && countdown $1 && cfonts "$2" -c candy -f tiny
}

#   connect to stuff
alias mapscii='telnet mapscii.me'
alias weather='curl wttr.in?0Q'
alias forecast='curl wttr.in?FQ2n'
alias moonphase='curl wttr.in/moon?QFT'

#   misc
alias aaa='unimatrix -s 99 -c red -u=aAäåÄÄÀàα₳ⱯℵӐɅⱭあアÂâ -f'
alias strawb='cat ~/celeste'
alias [fukc,fcuk,fucj]='fuck'

