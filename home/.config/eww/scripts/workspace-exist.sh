#!/usr/bin/env bash
echo $(swaymsg -t get_workspaces | jq -r '.[].name')
