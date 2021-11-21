#!/bin/bash

clear ; ls -a | lolcat
while read line
do
	case $line in
		"exit")
			clear ; break
			;;
		"mkdir")
			clear ; ls -a | lolcat 
			echo "Name the directory: " 
			read namae 
			mkdir "$namae" 
			clear ; ls -a | lolcat
			;;
		"touch")
			clear ; ls -a | lolcat 
			echo "Name the file: " 
			read namae 
			touch "$namae" 
			clear ; ls -a | lolcat
			;;
		"rm")
			clear ; ls -a | lolcat 
			echo "Remove which file? " 
			read namae
			rm "$namae" ; rm -d "$namae" 
			clear ; ls -a | lolcat
			;;
		*)
			if clear ; cd "$line"
			then
				ls -a | lolcat
			else
				clear ; ls -a | lolcat
				echo "Error: Wrong Directory"
			fi
			;;
	esac
done
