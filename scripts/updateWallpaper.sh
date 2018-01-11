#!/bin/sh

python2.7 $HOME/.fvwm/wallpaper/bing-desktop-wallpaper-changer-master/main.py;
convert $HOME/.fvwm/tmp/temp.jpg $HOME/.fvwm/tmp/temp.png;
fvwm-root -r $HOME/.fvwm/tmp/temp.png;
rm  $HOME/.fvwm/tmp/temp.jpg
