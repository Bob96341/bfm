#!/bin/bash

clear ; ls -a | lolcat
while read line
do
	if [ "$line" = "exit" ]
	then
		clear ; break
	fi
	if clear ; cd "$line" 
	then
		ls -a | lolcat
	else
		clear ; ls -a | lolcat
		echo "Directory does not exist"
	fi
done
