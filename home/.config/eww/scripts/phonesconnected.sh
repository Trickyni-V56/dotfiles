#!/usr/bin/env bash
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u)/bus"
if [ bluetoothctl info AC:80:0A:2E:C9:07 | grep -q "Connected: yes" ];then
  echo true
  exit 0
else
    echo false
    exit 0
fi
