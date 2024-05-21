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

# start MPD daemon (if no other instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd

# automatic disk mounting
udiskie -sN &

# autohide mouse cursor
unclutter &

# keyboard layout
setxkbmap fr

# set wallpaper
sh ~/.fehbg &

# register i3lock for this session
xss-lock -- i3lock -nc 000000 &

# launch desktop environment
exec startxfce4
