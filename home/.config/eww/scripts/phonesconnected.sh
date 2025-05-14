#!/user/bin/env bash
con=$(bluetoothctl info AC:80:0A:2E:C9:07 | grep Connected | cut -f 2 --delimiter=' ' )
if [ "$con" = "yes" ]; then
    echo 'true'
    exit 0
else
    echo 'false'
    exit 0
fi
