#!/usr/bin/env bash
JUNKLIST=$XDG_CONFIG_HOME/applauncher-dejunker/junklist.txt

case "$1" in
    run)
        xargs -a "$JUNKLIST" -I{} rm /usr/share/applications/{}
        ;;
    list)
        xargs -a "$JUNKLIST" -n 1
        ;;
    append)
        if [ -z "$2" ]; then
            echo "you didn't say which .desktop, birdbrain" >&2
        else
            if grep -q "$2" "$JUNKLIST"; then
                echo "it already exists, dingus" >&2
            else
                echo "$2" >> "$JUNKLIST"
            fi
        fi
        ;;
    remove)
        if [ -z "$2" ]; then
            echo "you didn't say which .desktop, birdbrain" >&2
        else
            if grep -q "$2" "$JUNKLIST"; then
                echo "it doesn't exist, what are you doinggg?" >&2
            else
                grep -v "$2" "$JUNKLIST" > temp && mv temp "$JUNKLIST"
            fi
        fi
        ;;
esac
