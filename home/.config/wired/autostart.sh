#!/bin/sh
killall -q wired
/usr/bin/wired &
notify-send "Wired" "active" --hint="string:wired-tag:tag_name"
