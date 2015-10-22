#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

setxkbmap -layout no

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

~/bin/logged-monitor-update &

pulseaudio --start

numlockx &

exec awesome >> ~/.cache/awesome/stdout 2>> ~/.cache/awesome/stderr
