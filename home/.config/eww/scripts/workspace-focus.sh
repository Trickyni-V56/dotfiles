#!/usr/bin/env bash
swaymsg -t get_workspaces | jq -r '.[] | select(.focused) | .name'
