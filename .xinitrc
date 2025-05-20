setxkbmap -option caps:swapescape &
/usr/libexec/geoclue-2.0/demos/agent &
redshift &
while true
do
	xsetroot -name "$(acpi | sed -e  "s/Battery 0: //" | sed -e "s/, [0-9]*:[0-9]*:[0-9]* //" | sed -e "s/remaining//" | sed -e "s/until charged//" | sed -e "s/Discharging, //")"
	sleep 20s
done &
dwm &
exec volumeicon
