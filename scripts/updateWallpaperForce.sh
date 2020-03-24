#!/bin/sh

rm ~/.fvwm/tmp/temp.jpg ~/.fvwm/tmp/*.jpg ~/.fvwm/tmp/temp.png  -rf
/usr/bin/python3.8 /home/dustin/.fvwm/wallpaper/bing-desktop-wallpaper-changer-master/main.py
/usr/bin/convert /home/dustin/.fvwm/tmp/temp.jpg /home/dustin/.fvwm/tmp/temp.png
/usr/local/bin/fvwm-root -r /home/dustin/.fvwm/tmp/temp.png
/usr/bin/rm  /home/dustin/.fvwm/tmp/temp.jpg

if /usr/bin/pgrep dropbox >/dev/null 2>&1; then /usr/bin/pgrep dropbox |/usr/bin/xargs -n 1 kill;fi
/usr/bin/dropbox -c /home/dustin/.fvwm/dropboxrc &
