##!/usr/bin/env bash
xdotool windowactivate --sync $(xdotool getmouselocation | awk 'match($4, /([0-9]+)/, id)  {print id[1]}') key --clearmodifiers F11
