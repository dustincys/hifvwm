LAT=`cat ~/.fvwm/tmp/location.json | grep -oP "(?<=lat\":[[:space:]])[0-9]+\.[0-9]+"`
LNG=`cat ~/.fvwm/tmp/location.json | grep -oP "(?<=lng\":[[:space:]])[0-9]+\.[0-9]+"`

redshift -l $LAT:$LNG
