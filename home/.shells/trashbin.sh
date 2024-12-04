FILENAME=${1:-$(fzf)}
if [ -z "$FILENAME" ]; then
    echo -en "\e[36m«TRASHING ABORTED»\e[0m"
    exit 1
fi
trash $FILENAME
echo -e "\e[31m \e[9m$FILENAME\e[0m";
