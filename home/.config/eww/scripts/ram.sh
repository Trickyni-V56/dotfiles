#!/usr/bin/env bash
free -m | grep Mem | awk '{print ($3/$2)*100}' | tr '.' ' ' | awk '{print $1}'
