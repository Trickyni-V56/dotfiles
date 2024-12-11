#!/usr/bin/env bash

FILENAME=${1:-$(fzf)}
if [ -z "$FILENAME" ]; then
    echo -e "\e[36m«TRASHING ABORTED»\e[0m" >&2
    exit 1
fi
if [ -e "$FILENAME" ]; then
    trash "$FILENAME"
    echo -e "\e[31m \e[9m$FILENAME\e[0m"
else
    echo -e "\e[36m«\e[31m$FILENAME \e[36mDOES NOT EXIST»\e[0m" >&2
fi
