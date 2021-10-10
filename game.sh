#!/bin/bash
echo vvedi r or s or p
read val
trolling=$((RANDOM%101))
if [ $trolling -le 16 ]
then
	if [ $val = r ]
	then
		comp=p
		echo $comp u lost
	elif [ $val = s ]
	then
		comp=r
		echo $comp u lost
	elif [ $val = p ]
	then
		comp=s
		echo $comp u lost
	fi
else
	comp=$((RANDOM%3))
	if [ $comp = 0 -a $val = s -o $comp = 1 -a $val = p -o $comp = 2 -a $val = r ]
	then
		echo $comp
		echo u lost
	elif [ $comp = 0 -a $val = r -o $comp = 1 -a $val = s -o $comp = 2 -a $val = p ]
	then
		echo $comp
		echo draw
	else
		echo $comp
		echo u win
	fi
fi