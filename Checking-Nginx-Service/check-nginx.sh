#!/bin/bash


if systemctl is-active --quiet nginx; then
	echo "Nginx is running"
else
	echo "Nginx is not running"
	sudo systemctl start nginx


	if systemctl is-active --quiet nginx; then
		echo "Nginx Server running"
	else
		echo "Failed to start nginx"
		exit 1
	fi
fi



#chmod +x check_nginx.sh
#./check_nginx.sh
