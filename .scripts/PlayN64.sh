#!/bin/sh

ls /home/hg/Media/Games/N64/Roms/ | dmenu -l 50 -p "Select N64 Game: " | awk '{print "mupen64plus --fullscreen --resolution=1920x1080 /home/hg/Media/Games/N64/Roms/\"" $0 "\""}' | sh
