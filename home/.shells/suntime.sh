#!/usr/bin/env bash
if [ ! -e '~/.location' ]; then
    coordinates=$(cat ~/.location)
else
    echo "<~/.location> file not found. please create one with coordinates in a <XX.XXXXXN XX.XXXXXXXE> format" >&2
    exit 1
fi

if [ "$(sunwait poll $coordinates)" == DAY ]; then
    sun=$(sunwait list set $coordinates civil)
    now=$(date '+%H:%M')
    output=$(qalc -t $sun - $now to time)
    echo "+"$output
else
    echo "-"
    exit 1
fi


#echo $(sunwait list set $(cat ~/.location) civil)":00"


# coordinates=$(curl -s ipinfo.io | grep loc | cut -d ' ' -f 4 | sed 's/",/E/g' | sed 's/,/N /g' | sed 's/"//g')
# coordinates= xx.xxxN xx.xxxE
