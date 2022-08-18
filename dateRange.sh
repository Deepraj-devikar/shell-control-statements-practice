#!/bin/bash

declare -i day=$1
declare -i month=$2

if [ $day -lt 1 -o $day -gt 31 ]
then
	echo "first argument should be day and it should be number"
	exit
fi

if [ $month -lt 1 -o $month -gt 12 ]
then
	echo "second argument should be month and it should be number"
	exit
fi

if [ $month -eq 4 -o $month -eq 5 ]
then
	echo "true"
	exit
fi

if [ $month -eq 3 -a $day -ge 20 ]
then
	echo "true"
	exit
fi

if [ $month -eq 6 -a $day -le 20 ]
then
	echo "true"
	exit
fi
