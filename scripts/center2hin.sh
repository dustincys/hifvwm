#!/bin/bash
wlt=`cat ~/.fvwm/tmp/.winidlist.temp`
IFS=''
readarray -t wids <<< "$wlt"
FvwmCommand "Piperead 'echo ResizeHalfTwoUDIn ${wids[0]} ${wids[1]}'"
rm ~/.fvwm/tmp/.winidlist.temp -f
