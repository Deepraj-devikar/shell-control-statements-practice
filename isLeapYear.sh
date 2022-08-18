#!/bin/bash

echo -n "enter year: "
read year

if [ $year -gt 999 -a $year -lt 10000 ]
then
	if [ $(($year%100)) -eq 0 ]
	then
		if [ $(($year%400)) -eq 0 ]
		then
			echo "$year is leap year"
		fi
	else
		if [ $(($year%4)) -eq 0 ]
		then
			echo "$year is leap year"
		fi
	fi
else
	echo "You not entered correct year"
fi
