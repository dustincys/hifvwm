#!/usr/bin/env bash
export LC_CTYPE="zh_CN.UTF-8"
export LANG=en_US.UTF-8
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

$HOME/bin/screen_projector.sh &
#$HOME/bin/screen_extent.sh &
if [[ -d /etc/X11/xinit/xinitrc.d ]]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi
if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
	# if not found, launch a new one
	eval `dbus-launch --sh-syntax --exit-with-session`
	echo "D-Bus per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"i
fi

# Start notification-daemon
/usr/lib/notify-osd-customizable/notify-osd &

# Load local modmap
test -r $HOME/.Xmodmap && xmodmap $HOME/.Xmodmap
# Load .Xdefaults

test -r $HOME/.Xresources && xrdb -merge $HOME/.Xresources
test -r $HOME/.Xdefaults && xrdb -merge $HOME/.Xdefaults

# fix gtk3 border, need to install libgtk3-nocsd manually
export GTK_CSD=0
export LD_PRELOAD="/usr/lib64/libgtk3-nocsd.so.0"

# set fake qt4/5 environment
[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"

export LC_CTYPE="zh_CN.UTF-8"
export LANG=en_US.UTF-8
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
exec fvwm2
