#!/bin/bash

clear ; ls -a | lolcat
echo "- - - - -"
echo "\"exit\" to exit, otherwise state which directory you want to access."
echo "To use a command please type \":\" before the command."
echo "To display this help message type \"help\""
while read line
do
	case $line in
		"exit")
			break
			;;
		"help")
			clear ; ls -a | lolcat
			echo "- - - - -"
			echo "\"exit\" to exit, otherwise state which directory you want to access."
			echo "To use a command please type \":\" before the command."
			echo "To display this help message type \"help\""
			;;

		*)
			if [ "${line:0:1}" = ":" ] 
			then
				asa=${line:1}
				$asa
				clear ; ls -a | lolcat
			else
				if clear ; cd "$line"
				then
					ls -a | lolcat
				else
					clear ; ls -a | lolcat
					echo "Error: Wrong directory"
				fi
			fi
			;;

	esac
done
