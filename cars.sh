#! /bin/bash
# cars.sh
# Mark Reiland

while echo "$choice" | egrep -v "^[1-3]$"
do
	echo "Type the number 1 to enter a new car"
	echo "Type the number 2 to display the list of cars"
	echo "Type the number 3 to quit and exit the program"
	read choice

case "$choice" in
	"1")   
	       	year=0
		while echo "$year" | egrep -v "^[0-9]{4}$"
		do
			echo "Enter year"
			read year
		done
		echo "Enter make"
		read make
		echo "Enter model"
		read model
		echo "$year:$make:$model" >> My_old_cars
		choice=0
		;;
	"2")
		less My_old_cars | sort
		choice=0
		;;
	"3")
		echo "Goodbye"
		exit
esac
done
