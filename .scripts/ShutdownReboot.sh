#!/bin/sh

res=$(echo -e "Shutdown\nReboot" | dmenu -p "Select option: ")

[[ $res == "Shutdown" ]] && sudo shutdown now 

[[ $res == "Reboot" ]] && sudo reboot now 
