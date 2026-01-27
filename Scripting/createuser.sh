#!/bin/bash

read -p "Enter username" username

echo "The username is: $username"

adduser $username --allow-bad-names
 
cd /home
ls -ltrh | grep $username
