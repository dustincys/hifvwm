wn=`cat ~/.fvwm/tmp/.winidlist.temp | wc -l`
if [ $wn -gt 2 ]
then
	echo "Exec exec ~/.fvwm/scripts/tilefvwmtopright.sh";
elif [ $wn -eq 2 ]
then
	echo "Exec exec ~/.fvwm/scripts/center2vin.sh";
elif [ $wn -eq 1 ]
then
	echo "All (CurrentPage, !Iconic, Iconifiable) MaxInEBSS";
	rm ~/.fvwm/tmp/.winidlist.temp -f;
fi