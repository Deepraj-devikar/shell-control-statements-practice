#!/bin/bash

weekDay=$((RANDOM%7+1))

if [ $weekDay -eq 1 ]
then
	echo "Sunday"
elif [ $weekDay -eq 2 ]
then
	echo "Monday"
elif [ $weekDay -eq 3 ]
then
	echo "Tuesday"
elif [ $weekDay -eq 4 ]
then
	echo "Wednesday"
elif [ $weekDay -eq 5 ]
then
	echo "Thursday"
elif [ $weekDay -eq 6 ]
then
	echo "Friday"
elif [ $weekDay -eq 7 ]
then
	echo "Saturday"
fi
