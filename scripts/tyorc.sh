wn=`cat ~/.fvwm/tmp/.winidlist.temp | wc -l`
if [ $wn -gt 1 ]
then
    echo "Exec exec ~/.fvwm/scripts/tilefvwmtopleft.sh"
else
    echo "All (CurrentPage, !Iconic, Iconifiable) MaxInEBSS"
fi
