#!/bin/bash

#######################################################################################################
alias meittp='cd /media/ricka/ARCHV && caddy file-server --listen 0:8000 --browse'
###############___void-linux___########################################################################
# alias invoke='sudo xbps-install'
# alias commune='sudo xbps-install -SU'
# alias scry='sudo xbps-query'
# alias banish='sudo xbps-remove'
###############___ubuntu-linux___######################################################################
alias invoke='sudo apt install'
alias commune='sudo apt update'
alias scry='sudo apt search'
alias {banish,harae}='sudo apt remove'
alias misogi='sudo apt autoremove'
# # alias BANISH='sudo apt remove $1 && echo -e "\e[31mBY THE WILL OF ODIN I SMITE THEE\e[0m"'

###############___devices___###########################################################################
#   Connects to Jupiter of the Monkey and sets it to the right audio profile
alias jotm='bluetoothctl connect 28:11:A5:72:F0:1E'

###############___aliases___###########################################################################
#   jmp
jmp(){ #  go to specified path and list its contents
    cd $1 && lsd
}
complete -o default -F _cd jmp # uses the output of the 'cd' function as the autocomplete for 'jmp()'

# cd
alias bk='cd .. && lsd'
alias home='clear && cd $HOME'
alias dls='cd ~/Downloads && lsd'

#   ls command replacement
alias ls='lsd'
alias lt='lsd --tree'
alias ll='lsd --long'
alias la='lsd --all'
alias mkv='ls *.mkv'
alias list='echo -e "\e[31m'ls' is quicker\e[0m"'
alias tree='echo -e "\e[31m'lt' is quicker\e[0m"'
# alias downime='cd ~/Downloads && ls | grep mkv'

#   fzf
alias lp='mpv $(fzf -e -q ".mkv$ | .webm$")'
alias downime='cd ~/Downloads && clear && mpv $(fzf -e -q ".mkv$ " --height 40% --border-label "Downloads")'

#   yt-dlp
alias ytdlp='cd ~/Downloads && yt-dlp'
alias ytmp3='cd ~/Downloads && yt-dlp -f ba --extract-audio --audio-format flac --audio-quality 0'

#   CLI aliases (if it runs something- put it here)
alias trash='trashbin.sh'
alias reload='source ~/.bashrc && echo "ka-clunk~"' #reloads .bashrc.sh
alias disk='df -h | grep -E "Filesystem|/dev/nvme0n1p2"' #displays available disk space.
alias F5='echo "savescum :3" && sudo timeshift --create'
alias polybar='/home/ricka/.config/polybar/launch.sh'
alias sampler='sampler -c ~/.config/sampler/config.yml'
alias matrix="unimatrix -s 95 -a -f -c blue"
alias audioprofile='wpctl set-profile 91 139'



#   command aliases (renames and setups go here!)
alias rm='rm -i'
alias open='xdg-open'
alias suspend='systemctl suspend'
alias syscuddle="systemctl"
alias symlink='echo -e "\e[31muse '"'"'ln -s'"'"' baaaka\e[0m | \033[31mL\033[0mi\033[31mn\033[0mk (-\033[31mS\033[0mymbolic)"'
alias python='python3'
alias nano='micro'
alias cat='bat'
alias btop="btop --utf-force"
alias dust='dust -riC'
alias grep='grep --color=auto'
alias anicli='ani-cli'
alias time='tuime -c candy -f tiny'
alias nyaa='nyaasi-normalizer'
alias get_recipe='get_recipe.sh'
alias enkidu='ncdu'
text(){
    cfonts "$1" -c candy -f tiny
}
alias cfonts='text'
timer(){
    clear && countdown $1 && text $2
}

#   mpv
alias play='mpv'
radio(){
    mpv $1 --no-video
}

#   list edits
alias {bashr,bashrc}="kate ~/.bash_aliases"
alias bashrc-edit='kate ~/.bashrc'

#   Shortcuts
alias calculator='gnome-calculator'
alias vol="pavucontrol &"
alias {blut,bluetooth}='bluetoothctl'
alias betterdiscord-update='~/.ricka/utils/BetterDiscord.AppImage'

#   connect to stuff
alias mapscii='telnet mapscii.me'
alias weather='curl wttr.in?0Q'
alias forecast='curl wttr.in?FQ2n'
alias moonphase='curl wttr.in/moon?QFT'

#   misc
alias aaa='unimatrix -s 99 -c red -u=aAäåÄÄÀàα₳ⱯℵӐɅⱭあアÂâ -f'
alias strawb='cat ~/celeste'

###############___Trash_function___####################################################################

#######################################################################################################


