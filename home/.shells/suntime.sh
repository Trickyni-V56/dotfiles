#!/usr/bin/env bash
coordinates=$(cat ~/.location) # add a ~/.location file with your coordinates in a <XX.XXXXXN XX.XXXXXXXE> format

if [ "$(sunwait poll $coordinates)" == DAY ]; then
    output=$(pdd $(sunwait list set $coordinates civil)":00" | head -c5)
    echo "+"$output
else
    echo "-"
    exit 1
fi


#echo $(sunwait list set $(cat ~/.location) civil)":00"


# coordinates=$(curl -s ipinfo.io | grep loc | cut -d ' ' -f 4 | sed 's/",/E/g' | sed 's/,/N /g' | sed 's/"//g')
# coordinates= xx.xxxN xx.xxxE
