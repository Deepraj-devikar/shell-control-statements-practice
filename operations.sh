#!/bin/bash

echo -n "Enter a: "
read a
echo -n "Enter b: "
read b
echo -n "Enter c: "
read c

arr=(`expr $a + $b \* $c` `expr $c + $a / $b` `expr $a % $b + $c` `expr $a \* $b + $c`)

echo "All evaluated values are ${arr[@]}"

min=${arr[0]}
max=${arr[0]}
for (( i=1; i<4; i++ ))
do
	if [ ${arr[$i]} -lt $min ]
	then
		min=${arr[$i]}
	elif [ ${arr[$i]} -gt $max ]
	then
		max=${arr[$i]}
	fi
done
echo "Minimum value is $min and Maximum value is $max"
