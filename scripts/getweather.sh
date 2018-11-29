#!/bin/bash

BIN_PATH=/usr/bin

$BIN_PATH/curl -s "https://location.services.mozilla.com/v1/geolocate?key=16674381-f021-49de-8622-3021c5942aff" -o /home/dustin/.fvwm/tmp/location.json

LAT=`$BIN_PATH/cat /home/dustin/.fvwm/tmp/location.json | $BIN_PATH/grep -oP "(?<=lat\":[[:space:]])[0-9]+\.[0-9]+"`
LNG=`$BIN_PATH/cat /home/dustin/.fvwm/tmp/location.json | $BIN_PATH/grep -oP "(?<=lng\":[[:space:]])[0-9]+\.[0-9]+"`

$BIN_PATH/curl -s "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(SELECT%20woeid%20FROM%20geo.places%20WHERE%20text%3D%22($LAT%2C$LNG)%22)%20and%20u%3D'c'&format=xml&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys" -o /home/dustin/.fvwm/tmp/weather.xml
