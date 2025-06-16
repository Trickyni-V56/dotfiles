#!/usr/bin/env bash
set -eux

pactl subscribe | grep --line-buffered 'change.*sink' | while read -r line; do
	echo $(pamixer --get-volume) $(pamixer --get-mute)
done

