#!/bin/sh
#awesome &
#exec ck-launch-session gnome-session # ck-launch-session is advised for the dbus stuff to work fine.

gnome-settings-daemon & # handles themes, starts gnome-screensaver. You may have to use gconf to disable it setting the background.
nm-applet &             # assuming you're using Network Manager
gnome-power-manager &   # for laptops and stuff
#gnome-volume-manager &  # for mounting CDs, USB sticks, and such
exec awesome            # awesome receives xinit's process id; when it terminates, X will be terminated

if [ -f $HOME/.xmodmap ]; then
    /usr/bin/xmodmap $HOME/.xmodmap
fi
