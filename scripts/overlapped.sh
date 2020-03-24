##!/usr/bin/env bash
echo "^" | osd_cat -A center -p bottom -l 1 -o 150 -s 1 -d 1 -u black -O 1 -c Plum1 -f -adobe-courier-bold-r-normal--34-240-100-100-m-200-iso8859-1 &

tmpfileIO=$(mktemp /tmp/fvwm.iconic.overlapped.XXXXXX)
tmpfileNO=$(mktemp /tmp/fvwm.noticonic.overlapped.XXXXXX)
tmpfileWINID=$(mktemp /tmp/fvwm.winidlist.XXXXXX)

FvwmCommand -i 1 "Piperead \"wmctrl -l | awk '\\"$\\"2==\\"$\[desk.n\]\\" {print \\"$\\"1}' > $tmpfileWINID\""
cat $tmpfileWINID | xargs -n 1 -I{} FvwmCommand -r "WindowID {} (CurrentPage, Overlapped, !Iconic) Piperead \"echo {} >> $tmpfileNO\""
cat $tmpfileWINID | xargs -n 1 -I{} FvwmCommand -r "WindowID {} (CurrentPage, Overlapped, Iconic) Piperead \"echo {} >> $tmpfileIO\""

if [ `cat $tmpfileNO | wc -l` -gt 0 ] || [ `cat $tmpfileIO | wc -l` -gt 0 ]
then
    NAPPS=`cat $tmpfileNO | xargs -n 1 -I{} xprop -id {} | grep CLASS | gawk 'BEGIN{FS="\""} NF>0 {t[$4]++} END{k=0;for(j in t){k++;if(k == length(t)){ORS=""}else{ORS=" "};
if(t[j]>1){print j"("t[j]")"}else{print j}}}'`
    IAPPS=`cat $tmpfileIO | xargs -n 1 -I{} xprop -id {} | grep CLASS | gawk 'BEGIN{FS="\""} NF>0 {t[$4]++} END{k=0;for(j in t){k++;if(k == length(t)){ORS=""}else{ORS=" "}; if(t[j]>1){print "["j"]("t[j]")"}else{print "["j"]"}}}'`
    echo $NAPPS $IAPPS |boxes -d stone | osd_cat -A center -p bottom -l 4 -o 150 -s 1 -d 3 -c Plum1 -O 2 -u black -f -adobe-courier-bold-r-normal--25-180-100-100-m-150-iso8859-1
fi
rm $tmpfileIO $tmpfileNO $tmpfileWINID -f
