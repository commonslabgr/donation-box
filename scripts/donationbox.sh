#!/bin/bash
# kiosh.sh - session creation

id=`xinput -list | grep Edamak | sed -n 's/.*\(id=\)//p' | sed -n 's/\t.*//p'`

/usr/bin/xset s off
/usr/bin/xset -dpms
/usr/bin/xset s noblank
/usr/bin/chromium-browser http://donationbox/ --kiosk --incognito --touch-devices=$id
/usr/bin/xinput set-int-prop "Edamak LG TS2009-F-USB" "Calibration" 32 27 2027 39 1977
sleep 30
#Turn on monitor
./monitorOn.sh
