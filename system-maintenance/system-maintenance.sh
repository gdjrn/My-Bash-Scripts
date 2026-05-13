#!/bin/bash


check_root() {
    	if [[ $EUID -ne 0 ]]; then
   		echo "Error: You need admin privileges"
   		exit 1
	fi
}

show_menu() {
cat << EOF
---------------------------
Manteniment system
---------------------------
1) Disk space
2) Free memory
3) Network connections (ss)
4) Clean old logs (2 days)
5) Top 10 CPU processes
6) Exit
---------------------------
EOF
}

check_root

while true;
do
	clear
	show_menu
        read -p "Guess the option: " option
	case $option in

        	1)
                	df -h
                	;;
        	2)
                	free -m
                	;;
        	3)
			ss -tulanp
			;;

		4)
			journalctl --vacuum-time=2d
			;;

		5)
			ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 11
			;;
		6)
			echo "Goodbye!!"
                	exit 0
                	;;
	esac
	echo ""
        read -p "Press [Enter] to continue..."
done
