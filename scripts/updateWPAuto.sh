#!/bin/bash
export XAUTHORITY=/home/dustin/.Xauthority

current=`/usr/bin/date +%d`
modify=`/usr/bin/date -r /home/dustin/.fvwm/tmp/temp.png +%d`

if [ $current -ne $modify ]
then
	/home/dustin/.fvwm/scripts/updateWallpaper.sh
fi
