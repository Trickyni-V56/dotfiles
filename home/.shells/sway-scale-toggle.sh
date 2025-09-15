#!/usr/bin/env bash
case "$1" in
    "")
      current_scale=$(swaymsg -t get_outputs | grep '"scale": '| sed -n 's/[^0-9.]*\([0-9]\+\(\.[0-9]\+\)\?\).*/\1/p')
      if [ "$current_scale" == 1.5 ]; then
        swaymsg 'output * scale 1.0'
        qs ipc call panel scale 1.5 #values are inverse because quickshell's default is 1.5 scaled. might change later.
      else
        swaymsg 'output * scale 1.5'
        qs ipc call panel scale 1.0
      fi
    ;;
    gameon)
        swaymsg 'output * scale 1.0'
        qs ipc call panel scale 1.5

    ;;
    gameoff)
        swaymsg 'output * scale 1.5'
        qs ipc call panel scale 1.0
    ;;
esac
