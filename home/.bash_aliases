#!/bin/bash


#####################__void-linux__######################
# alias invoke='sudo xbps-install'
# alias commune='sudo xbps-install -SU'
# alias scry='sudo xbps-query'

#####################__ubuntu-linux__######################
alias invoke='sudo apt install'
alias commune='sudo apt update'
alias purge='sudo apt remove'
#####################___aliases___#####################################################################
#   jmp
jmp(){ #go to specified path and list its contents
    cd $1 && lsd
}
complete -o default -F _cd jmp # uses the output of the 'cd' function as the autocomplete for 'jmp()'

# dir shortcuts
alias dotfiles='jmp ~/.dotfiles'
alias anime='jmp ~/Videos/anime'
alias seasonal='cd ~/Videos/anime/seasonal'
alias downloads='jmp ~/Downloads'
alias configs='jmp ~/.config'


# cd
alias {bk,back}='cd .. && lsd'
alias home='clear && cd $HOME'

# ls command replacement
alias ls='lsd'
alias lt='lsd --tree'
alias ll='lsd --long'
alias la='lsd --all'
alias list='echo -e "\e[31m'ls' is quicker\e[0m"'alias dooit='dooit-wrapper'


#   fzf
alias playlist='mpv $(fzf -e -q ".mkv$ ")'
alias downime='cd ~/Downloads && clear && mpv $(fzf -e -q ".mkv$ " --height 40% --border-label "Downloads")'

#   yt-dlp
alias ytdlp='ytdlp'
alias ytmp3='cd ~/Music && yt-dlp -f ba --extract-audio --audio-format flac --audio-quality 0'
alias ytmp4='yt-dlp -f ba'

#   CLI aliases (if it runs something- put it here)
alias sampler='sampler -c ~/.config/sampler/config.yml'
alias matrix="unimatrix -s 95 -a -f -c magenta"
alias {hyfetch,neofetch}="hyfetch --ascii-file ~/logo.txt"
alias reload='source ~/.bashrc && echo "ka-clunk~"' #reloads .bashrc.sh
alias F5='echo "savescum :3" && sudo timeshift --create'
alias {diskspace,disk}='df -h | grep -E "Filesystem|/dev/nvme0n1p2"' #displays available disk space.
alias audioprofile='wpctl set-profile 91 139'
text(){
    cfonts $1 -c candy -f tiny
}
alias cfonts='text'
alias time='tuime -c candy -f tiny'


#   command aliases (renames and setups go here!)
alias rm='rm -i'
alias play='mpv'
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
alias polybar-restart='/home/ricka/.dotfiles/configs/polybar/launch.sh'

#   list edits
alias {bashr,bashrc}="kate ~/.bash_aliases"
alias bashrc-edit='kate ~/.bashrc'

#   Shortcuts
alias dino="GDK_DPI_SCALE=1.5 dino-im"
alias calculator='gnome-calculator'
alias vol="pavucontrol &"
alias {blut,bluetooth}='bluetoothctl'
alias betterdiscord-update='~/.ricka/utils/BetterDiscord.AppImage'

#   Firefox
alias photopea='firefox photopea.com'
alias chatgpt='firefox chatgpt.com'

#   connect to stuff
alias mapscii='telnet mapscii.me'
alias weather='curl wttr.in?0Q'
alias forecast='curl wttr.in?FQ2n'
alias moonphase='curl wttr.in/moon?QFT'

# Connects to Jupiter of the Monkey and sets it to the right audio profile
alias jotm='bluetoothctl connect 28:11:A5:72:F0:1E'


#silly
alias aaa='unimatrix -s 99 -c red -u=aAäåÄÄÀàα₳ⱯℵӐɅⱭあアÂâ -f'



#################___Trash_function___##################################################################
trashbin ()
{
trash "$1"
echo -e "\e[31m \e[9m$1\e[0m";
}
alias trash='trashbin'

#######################################################################################################
get_recipe(){ #scrapes a recipe from a blog and displays only the instructions
curl -sG "https://plainoldrecipe.com/recipe" -d "url=${1}" | pandoc -f html -t markdown
}
#######################################################################################################
