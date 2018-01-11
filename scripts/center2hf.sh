#!/bin/bash
wlt=`cat ~/.fvwm/tmp/.winidlist.temp`
IFS=''
readarray -t wids <<< "$wlt"
FvwmCommand "Piperead 'echo ResizeHalfTwoUDF ${wids[0]} ${wids[1]}'"
