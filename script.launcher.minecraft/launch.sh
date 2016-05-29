#!/bin/bash
export DISPLAY=:0

pkill -9 kodi.bin

wget -nc http://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.jar -O ~/Minecraft.jar

java -jar ~/Minecraft.jar

/usr/bin/kodi &
