#!/bin/bash
htime=$(date +%H)

if [ $htime -ge 22 ] && [ $htime -le 4 ]; then
	farewell="goodnight 󰒲"
else
	farewell="bye :)"
fi
notify-send "Notice" "The system has begun it's shutdown process....$farewell"
source ~/shellscripts/shutdown.sh
