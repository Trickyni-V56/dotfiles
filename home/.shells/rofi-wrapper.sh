#!/usr/bin/env bash
if pgrep -x rofi; then
    killall rofi
else
    rofi -normal-window -show drun
fi
