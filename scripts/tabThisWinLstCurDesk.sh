#!/bin/bash

sedGetValue='s/.*=\(.*\)/\1/'
windowId=`xdotool getmouselocation --shell 2>/dev/null |grep WINDOW |sed "$sedGetValue"`
echo "WindowList ("\"`xprop -id $windowId | grep WM_CLASS | grep -o "[^\"]*[^\"]" | awk 'END{print $0}'`\"", CurrentDesk)  CurrentAtEnd,NoDeskSort,SelectOnRelease Super_L"
