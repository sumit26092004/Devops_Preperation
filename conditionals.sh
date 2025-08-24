#!/bin/bash

<< Comment
This is If else loop script.
Comment

read -p "Enter your name: " name

if [[ $name == "Sumit" ]];
then 
	echo "Correct Name"
else
	echo "Wrong name"
fi


