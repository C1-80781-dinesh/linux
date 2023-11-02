#!/bin/bash




choice=0
while [ $choice -ne 5  ]
do
	echo "1.Date, 2.Cal, 3.Ls, 4.Pwd, 5.Exit"
	read choice
	case $choice in 
		1)
			date
			;;
		2)
			cal
			;;
		3)
			ls
			;;
		4)
			pwd
			;;
		*)
			echo "Thank you!!"
			;;
	esac

done


















