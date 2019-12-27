#!/bin/bash

BIN_PATH=/usr/bin

if $BIN_PATH/ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
	$BIN_PATH/curl -s "https://location.services.mozilla.com/v1/geolocate?key=test" -o /home/dustin/.fvwm/tmp/location.json;
	LAT=`$BIN_PATH/cat /home/dustin/.fvwm/tmp/location.json | $BIN_PATH/grep -oP "(?<=lat\":[[:space:]])(-)*[0-9]+\.[0-9]+"`;
	LON=`$BIN_PATH/cat /home/dustin/.fvwm/tmp/location.json | $BIN_PATH/grep -oP "(?<=lng\":[[:space:]])(-)*[0-9]+\.[0-9]+"`;
	/home/dustin/.fvwm/conky/clock/openweather.py --get_weather_icon --get_temp_c --get_status --get_location --get_time --get_forecast --api_key 022d9894819c26feac12e101784c3494 --lat $LAT --lon $LON > ~/.fvwm/tmp/weather.txt ;
else
	echo "IPv4 is down"
fi

