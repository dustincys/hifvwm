#!/bin/bash

if pgrep rofi >/dev/null 2>&1; then pgrep rofi |xargs -n 1 kill;fi

op=`echo "projector 1kforce
projector one
projector duplicate
projector extent
no projector" | rofi -dmenu -p "Projector:"`

if [ "$op" == "projector 1kforce" ]; then
    /home/dustin/bin/screen_projector_1kforce.sh;
    FvwmCommand "SmartMaximizeADAll";
elif [ "$op" == "projector one" ]; then
    /home/dustin/bin/screen_projector.sh;
    FvwmCommand "SmartMaximizeADAll";
elif [ "$op" == "projector duplicate" ]; then
    /home/dustin/bin/screen_duplicate.sh;
    FvwmCommand "SmartMaximizeADAll";
elif [ "$op" == "projector extent" ]; then
    /home/dustin/bin/screen_extent.sh;
    FvwmCommand "SmartMaximizeADAll";
elif [ "$op" == "no projector" ]; then
    /home/dustin/bin/screen_only.sh;
    FvwmCommand "SmartMaximizeADAll";
fi
