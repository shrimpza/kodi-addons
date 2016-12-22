#!/bin/bash
export DISPLAY=:0

pkill -9 kodi.bin

# for some reason on my Kodi system, Alsa does not work in retroarch
pulseaudio --start

/usr/bin/retroarch -f

pulseaudio -k

/usr/bin/kodi &
