#!/bin/bash

install_nginx() {
	echo "Nginx Installing"
	sudo apt-get install  nginx -y
}

check_Installed(){
	nginx -v
	systemctl enable nginx

}

echo "************************** NGINX STARTED INSTALLATION ***********************"

install_nginx 
check_Installed

echo "**************************NGINX INSTALATION DONE"***************************8
