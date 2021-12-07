#!/bin/zsh

#awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master)
echo "VOL:" $(amixer sget Master | awk -F"[][]" '/Left:/ { print $2 }')
