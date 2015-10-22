#!/bin/sh

setxkbmap -layout no

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

~/bin/logged-monitor-update &

pulseaudio --start

numlockx &

exec awesome >> ~/.cache/awesome/stdout 2>> ~/.cache/awesome/stderr
