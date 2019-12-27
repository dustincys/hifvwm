#!/bin/bash
export XAUTHORITY=/home/dustin/.Xauthority

current=`/usr/bin/date +%d`
modify=`/usr/bin/date -r /home/dustin/.fvwm/tmp/temp.png +%d`

if [ $current -ne $modify ]
then
	/home/dustin/.fvwm/scripts/updateWallpaper.sh &
fi

# sn=`/usr/bin/ps -aux | /usr/bin/grep stalonetray | /usr/bin/wc -l`
# if [ $sn -lt 2 ]
# then
    # /usr/bin/stalonetray -c /home/dustin/.fvwm/stalonetrayrc &
# fi
#
# cn=`/usr/bin/ps -aux | /usr/bin/grep conky | /usr/bin/wc -l`
# if [ $cn -lt 5 ]
# then
    # /home/dustin/bin/conky-startup.sh &
# fi
#
# nn=`/usr/bin/ps -aux | /usr/bin/grep nutstore | /usr/bin/wc -l`
# if [ $nn -lt 3 ]
# then
    # /home/dustin/bin/nut.sh &
# fi
#
# cbn=`/usr/bin/ps -aux | /usr/bin/grep cbatticon | /usr/bin/wc -l`
# if [ $cbn -lt 2 ]
# then
    # /usr/bin/cbatticon &
# fi
#
# cngn=`/usr/bin/ps -aux | /usr/bin/grep connman-gtk | /usr/bin/wc -l`
# if [ $cngn -lt 2 ]
# then
    # /usr/bin/connman-gtk &
# fi
#
# pnmn=`/usr/bin/ps -aux | /usr/bin/grep pnmixer | /usr/bin/wc -l`
# if [ $pnmn -lt 2 ]
# then
    # /usr/bin/pnmixer &
# fi
