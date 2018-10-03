#!/bin/bash
PORT="3030|27017"

#Check port exists
netstat -nta |grep -i listen |grep '3030\|27017' &>/dev/null
if [[ $? -eq 0 ]]; then
	echo "Port ${PORT} is existing. Please, use other ports"
	exit 0;
else
 	echo "Creating docker container for nodejs and mongodb"
	sleep 2
	docker-compose up -d
fi
