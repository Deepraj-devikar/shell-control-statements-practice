#!/bin/bash

dice () {
	echo $((RANDOM%6+1))
}

diceNumber=$(dice)

echo $diceNumber
