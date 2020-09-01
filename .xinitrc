#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap


# Razer Tray
polychromatic-tray-applet &
# Keybindings
setxkbmap pt &
# USBs
udiskie --tray &

# Volume Applet
volctl &

# Network
dhcpcd &
nm-applet &

# Compositor
picom -b &
# Wallpaper
nitrogen --restore &
# Screenlock
#xautolock -time 10 -locker "i3lock -k -c '#5e5e5ecc'" -detectsleep &

exec awesome
