#!/bin/bash

dice () {
	echo $((RANDOM%6+1))
}

diceNumber1=$(dice)
diceNumber2=$(dice)
add=$(($diceNumber1+$diceNumber2))
echo "Addition of two dice is $add"
