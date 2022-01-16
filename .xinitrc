#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Monitor settings
xset s off
xset -dpms

# Touchpad Settings
xinput set-prop "SynPS/2 Synaptics TouchPad" "libinput Tapping Enabled" 1

# Setting up mpd
mpd &
# Swap Caps Lock and Left Control
setxkbmap -option ctrl:swapcaps
# Setting up i3-gaps environment
wal -i "/home/chris/Wallpapers/Sky.png"
exec i3
