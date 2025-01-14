#!/bin/sh
gammastep &
vorta --daemonize
xbindkeys &

dbus-update-activation-environment --systemd DISPLAY MOZ_DBUS_REMOTE

setxkbmap -option caps:swapescape

EXTERNAL_MONITOR="HDMI-A-0"

if xrandr | grep "$EXTERNAL_MONITOR connected"; then
    xrandr --output eDP --off
    xrandr --output $EXTERNAL_MONITOR --auto --primary
fi

nitrogen --restore &
picom &

