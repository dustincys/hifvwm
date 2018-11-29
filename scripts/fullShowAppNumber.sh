wn=`cat ~/.fvwm/tmp/.winidlist.temp | wc -l`;
if [ $wn -ge 4 ]
then
	echo "EchoPageNumberIfFull purple";
elif [ $wn -eq 3 ]
then
	echo "EchoPageNumberIfFull orchid";
elif [ $wn -eq 2 ]
then
	echo "EchoPageNumberIfFull fuchsia";
elif [ $wn -eq 1 ]
then
	echo "EchoPageNumberIfFull orange";
fi
rm ~/.fvwm/tmp/.winidlist.temp -f
