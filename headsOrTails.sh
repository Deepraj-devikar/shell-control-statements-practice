#!/bin/bash

coinFlip () {
	echo $((RANDOM%2))
}

checkHeads=0
checkTails=1

if [ $(coinFlip) -eq $checkHeads ]
then
	echo "Heads"
else
	echo "Tails"
fi
