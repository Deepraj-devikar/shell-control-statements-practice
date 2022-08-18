#!/bin/bash

threeDigVal () {
	echo $((RANDOM%900+100))
}

for (( i=0; i<5; i++))
do
	arr[$i]=$(threeDigVal)
done
echo "5 Random 3 digit values are ${arr[@]}"
min=${arr[0]}
max=${arr[0]}
for (( i=1; i<5; i++ ))
do
	if [ ${arr[$i]} -lt $min ]
	then
		min=${arr[$i]}
	elif [ ${arr[$i]} -gt $max ]
	then
		max=${arr[$i]}
	fi
done
echo "minimum value id $min and maximum value is $max"
