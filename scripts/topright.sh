if ! pgrep skippy-xd >/dev/null 2>&1; then skippy-xd; else pgrep skippy-xd |xargs -n 1 kill; fi
#FvwmCommand "ForTYorCIn"
#FvwmCommand "Piperead 'echo FvwmRearrange -tile -mn 3 -animate -m -u -s -t 0 \$((\$[fvwmiconman_height]+2*\$[back_borderwidth]))p \$((\$[vp.width]-\$[fvwm_left_margin]-\$[fvwm_right_margin]-1))p \$((\$[vp.height]-(\$[fvwmiconman_height]+2*\$[back_borderwidth])-1))p'";
