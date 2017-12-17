sleep 20s
killall conky
conky -c "$HOME/.fvwm/conky/clock/clock_weather.conf" &
conky -c "$HOME/.fvwm/conky/left/info.conf" &
conky -c "$HOME/.fvwm/conky/right/info.conf" &
