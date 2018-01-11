FvwmCommand "Piperead 'echo FvwmRearrange -tile -mn 3 -animate -m -u -s -t 0 \$((\$[fvwmiconman_height]+2*\$[back_borderwidth]))p \$((\$[vp.width]-\$[fvwm_left_margin]-\$[fvwm_right_margin]-1))p \$((\$[vp.height]-(\$[fvwmiconman_height]+2*\$[back_borderwidth])-1))p'";
sleep 0.8
FvwmCommand "FRTile_Y"
rm ~/.fvwm/tmp/.winidlist.temp -f
