#!/bin/bash

set -euxo pipefail

while [ true ]
do
	echo "Starting up server..."
 	sudo iptables -A INPUT -p tcp --dport 27016 -j ACCEPT
	./venv/bin/python3 start_server.py &
	echo "Server has shut down. Will restart in 2 seconds (use CTRL-C to cancel)"
	sleep 2
done
