#!/bin/bash
while xsetroot -name "$(top -b -n 1 | awk 'FNR == 3 {print "USED CPU: " $2 + $4 " IDLE: " $8}') $(df -h | awk 'FNR == 4 {print "| TOTAL DISK: " $2 " USED: " $3}') $(free -h | awk 'FNR == 2 {print "| RAM: " $2 " USED: " $3 " | "}') $(awk -F"[][]" '/Left:/ { print "VOL: " $2 " | " }' <(amixer sget Master)) $(date +'%a %d-%m %H:%M:%S')"
do 
	sleep 1
done &
