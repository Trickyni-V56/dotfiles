#!/usr/bin/env bash
case "$1" in
    "")
      current_scale=$(swaymsg -t get_outputs | grep '"scale": '| sed -n 's/[^0-9.]*\([0-9]\+\(\.[0-9]\+\)\?\).*/\1/p')
      if [ "$current_scale" == 1.5 ]; then
        swaymsg 'output * scale 1.0'
        eww reload
      else
        swaymsg 'output * scale 1.5'
        eww reload
      fi
    ;;
    gameon)
        swaymsg 'output * scale 1.0'
        eww reload
    ;;
    gameoff)
        swaymsg 'output * scale 1.5'
        eww reload
    ;;
esac
