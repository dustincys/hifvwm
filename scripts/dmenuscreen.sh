#!/bin/bash

op=`echo "projector two
projector one
no projector" | rofi -dmenu -p "Projector:"`

if [ "$op" == "projector two" ]; then
    /home/dustin/bin/screen_projector_two.sh
elif [ "$op" == "projector one" ]; then
    /home/dustin/bin/screen_projector.sh
elif [ "$op" == "no projector" ]; then
    /home/dustin/bin/screen_only.sh
fi
FvwmCommand "SmartMaximizeADAll";
