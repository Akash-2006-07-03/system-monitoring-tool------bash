#!/bin/bash

#Define color
GREEN="\e[32m"
YELLOW="\e[33m"
RED="\e[31m"
RESET="\e[0m"

while true;do

	DATE=$(date +"%Y-%m-%d %H:%M:%S")
	#cpu usage
	CPU=$(mpstat 1 1 | tail -1 | awk '{print 100-$NF}')
	#RAM usage
	RAM=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
	#DISK usage
	DISK=$(df / | tail -1 | awk '{print $5}' | tr -d "%")

	#func to apply color
	color_usage() {
		local value=$1
		if (( $(echo "$value<50" | bc) )); then
			echo -e "${GREEN}${value}%${RESET}"
		elif (( $(echo "$value<80" | bc) ));then
			echo -e "${YELLOW}${value}%${RESET}"
		else
			echo -e "${RED}${value}%${RESET}"
		fi
	}
	
	CPU_COLOR=$(color_usage $CPU)
	RAM_COLOR=$(color_usage $RAM)
	DISK_COLOR=$(color_usage $DISK)

	echo -e "$DATE: CPU: $CPU_COLOR | RAM: $RAM_COLOR | DISK: $DISK_COLOR"

sleep 5

done
