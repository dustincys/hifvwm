wn=`cat ~/.fvwm/tmp/.winidlist.temp | wc -l`
if [ $wn -gt 2 ]
then
	echo "Exec exec ~/.fvwm/scripts/tilefvwmtopleft.sh";
elif [ $wn -eq 2 ]
then
	echo "Exec exec ~/.fvwm/scripts/center2hin.sh";
elif [ $wn -eq 1 ]
then
	FvwmCommand "All (CurrentPage, "'!'"Iconic, Iconifiable, "'!'"shaded) Silent MaxInEBSS";
	rm  ~/.fvwm/tmp/.winidlist.temp  -f
fi
