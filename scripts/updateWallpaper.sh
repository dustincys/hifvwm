#!/bin/sh

/usr/bin/python2.7 /home/dustin/.fvwm/wallpaper/bing-desktop-wallpaper-changer-master/main.py
/usr/bin/convert /home/dustin/.fvwm/tmp/temp.jpg /home/dustin/.fvwm/tmp/temp.png
/usr/local/bin/fvwm-root -r /home/dustin/.fvwm/tmp/temp.png
/usr/bin/rm  /home/dustin/.fvwm/tmp/temp.jpg
