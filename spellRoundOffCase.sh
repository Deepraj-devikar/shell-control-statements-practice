#!/bin/bash

echo -n "Enter number 1, 10, 100, 1000 etc : "
read num

case $num in
	1)
		echo "Unit"
	;;
	10)
		echo "Ten"
	;;
	100)
		echo "Hundred"
	;;
	1000)
		echo "Thousand"
	;;
	10000)
		echo "Ten Thousand"
	;;
	100000)
		echo "Lack"
	;;
	1000000)
		echo "Ten Lack"
	;;
	*)
		echo "Crore"
	;;
esac;
