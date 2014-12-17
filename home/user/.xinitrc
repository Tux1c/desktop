# DMenu
while true ; do
	if [ "`xset -q | awk -F \" \" '/Group 2/ {print($4)}'`" = "on" ]; 
	then 
		  xsetroot -name "He $(date '+%a %e %b %k:%M' ) S P" 
	else 
		  xsetroot -name "En $(date '+%a %e %b %k:%M' ) S P"
	fi;
	sleep 0.1
done &

# Fonts
xset fp+ /usr/share/fonts/terminus

# Background
feh --bg-scale /home/yan/Pictures/wallpaper.jpg

# URXVT config
xrdb .Xresources

# Keyboard layout
setxkbmap -option grp:switch,grp:alt_shift_toggle, us,il

# Compton
compton -b --backend glx --vsync opengl-swc

# MPD
mpd

# Autostart
bash /home/yan/.autostart &

# Starts DWM
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session dwm
