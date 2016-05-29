#!/bin/bash
export DISPLAY=:0

pkill -9 kodi.bin

pulseaudio --start

/usr/bin/steam -bigpicture

pulseaudio -k

/usr/bin/kodi &
