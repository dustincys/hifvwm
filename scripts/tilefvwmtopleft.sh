FvwmCommand "Piperead 'echo FvwmRearrange -tile -mn 3 -m -u -s -t -h  0  \$((\$[fvwmiconman_height] + 2 * \$[back_borderwidth]))p \$((\$[vp.width]-\$[fvwm_left_margin]-\$[fvwm_right_margin]-1))p \$((\$[vp.height] - (\$[fvwmiconman_height] + 2 * \$[back_borderwidth])))p'";
sleep 0.5 
# FvwmCommand "FRTile_X"
rm ~/.fvwm/tmp/.winidlist.temp -f
