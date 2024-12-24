#!/usr/bin/env bash
trashit(){
    trash "$file"
    echo -e "\e[31m \e[9m$file\e[0m"
}

case "$1" in
    "")
        file=$(fzf)
        if [ -z "$file" ]; then # argument nonexistent check
            echo -e "\e[90m«TRASHING ABORTED»\e[0m" >&2
            exit 1
        else
           trashit
        fi
    ;;
    *)
        file=$1
        if [ ! -e "$file" ]; then
            echo -e "\e[90m«\e[31m$file \e[90mDOES NOT EXIST»\e[0m" >&2
        else
            trashit
        fi
    ;;
esac
