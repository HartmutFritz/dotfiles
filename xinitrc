#!/bin/bash


# choose hyprland or qtile
qtile=false

if [ "$qtile" = true ]; then
    EXTERNAL_MONITOR="HDMI-A-0"
    if xrandr | grep "$EXTERNAL_MONITOR connected"; then
        xrandr --output eDP --off
        xrandr --output $EXTERNAL_MONITOR --auto --primary
    fi
    xbindkeys
    setxkbmap -option caps:swapescape
    exec qtile start

else
    exec Hyprland
fi



