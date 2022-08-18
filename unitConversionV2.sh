#!/bin/bash

echo -n "Enter measurement : "
read mes

echo "Select any conversion option from following : "
echo "1) Feet To Inch"
echo "2) Inch To Feet"
echo "3) Feet To Meter"
echo "4) Meter To Feet"
read opt

case $opt in
	1)
		echo "$mes Feet will be `expr $mes \* 12` Inch"
	;;
	2)
		echo "$mes Inch will be `expr $mes / 12` Feet"
	;;
	3)
		meter=`echo "$mes*0.3048" | awk -F "*" '{print ($1*$2)}'`
		echo "$mes Feet will be $meter Meter"
	;;
	4)
		feet=`echo "$mes/0.3048" | awk -F "/" '{print ($1/$2)}'`
		echo "$mes Meter will be $feet Feet"
	;;
	*)
		echo "You not entered correct option i.e. 1, 2, 3 or 4"
	;;
esac;
