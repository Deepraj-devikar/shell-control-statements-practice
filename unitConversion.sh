#!/bin/bash

# 1) 1ft = 12in then 42in = ?ft
inchToFeet (){
	feetInch[0]=$(($1/12))
	feetInch[1]=$(($1%12))
	echo $feetInch
}
feetInch=$(inchToFeet 42)
echo "42 inches is equal to  ${feetInch[0]} feets and ${feetInch[1]} inches. "

# 2) Rectangular plot of 60feet * 40feet in meters
feetToMeter (){
	inches=$(($1*12+$2))
	local meter=`echo "$inches*0.0254" | awk -F "*" '{print ($1*$2)}'`
	echo "$meter"
}
meter1=$(feetToMeter 60 0)
meter2=$(feetToMeter 40 0)
echo "Rectangular plot of 60feets * 40feets will be in meters $meter1 meters * $meter2 meters. "

# 3) Calculate area of 25 such ploats in acer
acer1=`echo "$meter1*25*0.000247105" | awk -F "*" '{print ($1*$2*$3)}'`
acer2=`echo "$meter2*25*0.000247105" | awk -F "*" '{print ($1*$2*$3)}'`
echo "area of 25 such ploats in acer will be $acer1 acers * $acer2 acers. "
