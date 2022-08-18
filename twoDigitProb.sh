#!/bin/bash

twoDigVal (){
	echo $((RANDOM%90+10))
}
sum=0
for (( i=0; i<5; i++ ))
do
	tmpTwoDigVal=$(twoDigVal)
	arr[$i]=$tmpTwoDigVal
	sum=$(($sum+tmpTwoDigVal))
done

echo ${arr[@]}
echo "Sum is : $sum"
avg=$(($sum/5))
echo "Avg is : $avg"
