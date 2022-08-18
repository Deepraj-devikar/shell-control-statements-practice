#!/bin/bash

echo -n "Enter number: "
read num

if [ $(($num/10)) -eq 0 ]
then
	echo "Unit"
elif [ $(($num/100)) -eq 0 ]
then
	echo "Ten"
elif [ $(($num/1000)) -eq 0 ]
then
	echo "Hundred"
elif [ $(($num/100000)) -eq 0 ]
then
	echo "Thousand"
elif [ $(($num/10000000)) -eq 0 ]
then
	echo "Lack"
else
	echo "Crore"
fi
