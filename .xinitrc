#!/bin/sh

setxkbmap -layout no

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

rmonitor -u -v >> ~/.cache/rmonitor/stdout 2>> ~/.cache/rmonitor/stderr &

pulseaudio --start

numlockx &

exec awesome >> ~/.cache/awesome/stdout 2>> ~/.cache/awesome/stderr
