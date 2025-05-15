#!/bin/bash
bluetoothctl info AC:80:0A:2E:C9:07 | grep Battery | grep -oP '\(\K[0-9]+' || echo 404
