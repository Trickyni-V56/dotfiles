#!/usr/bin/env bash
set -eu
pamixer --get-$1
pactl subscribe | grep --line-buffered 'change.*sink' | while read -r line; do
	pamixer --get-$1
done

