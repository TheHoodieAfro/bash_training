#!/bin/bash

if [[ $# -eq 1  ]]
then

	for port in {1..65535}; do
		timeout 1 bash -c "echo >/dev/tcp/$1/$port" &&
		echo "port $port is open" ||
		echo "port $port is closed"
	done
	
elif [[ $# -eq 2 ]]
then

	for port in $(seq 1 $2); do
		timeout 1 bash -c "echo >/dev/tcp/$1/$port" &&
		echo "port $port is open" ||
		echo "port $port is closed"
	done

elif [[ $# -eq 3 ]]
then

	for port in $(seq $2 $3); do
		timeout 1 bash -c "echo >/dev/tcp/$1/$port" &&
		echo "port $port is open" ||
		echo "port $port is closed"
	done

else
	echo -e "SINNTAX ERROR\nEx: command [ip]"
	exit
fi
