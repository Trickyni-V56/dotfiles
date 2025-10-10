#!/usr/bin/env bash
touch /tmp/fetchmethemoon.txt /tmp/linecount.txt
temp=/tmp/fetchmethemoon.txt
linecount=/tmp/linecount
info=~/.config/moonfetch/moonfetch.conf
infolength=$(wc -l $info | cut -f1 -d ' ')
chmod 755 $temp
phoon -q > $temp
phoon -q
awk '{print length}' $temp > $linecount
awk '{print}' $linecount > $temp
moonlength=$(wc -l $temp | cut -f1 -d ' ')
echo -e "\033[${moonlength}A"

for i in $(seq 1 "$infolength"); do #find how many lines in details.txt
    xpos=$(sed -n "$((i+1))p" $temp) # finds the X-axis position for the new line
    xpos=$((xpos+2))
    infoline=$(sed -n "${i}p" $info)
    echo -e "\033[${xpos}C$infoline"
done

#color


jumpspace=$(("$moonlength"-"$infolength"))
echo -e "\033[${jumpspace}B"
