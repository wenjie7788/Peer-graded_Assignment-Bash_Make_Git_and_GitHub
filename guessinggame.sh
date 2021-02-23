#!/usr/bin/env bash

function congrats { # one function
	echo "Congratulations! You have entered the correct number!"
}

control=0

while [[ $control -eq 0 ]] # one loop
do
	echo "Please enter the number of files in the current directory:"
	read response
	echo "You entered : $response"

	numfiles=(*)
	numfiles=${#numfiles[@]}
	# echo "the number of files is: $numfiles"

	if [[ response -eq numfiles ]] # one if statement
	then
		congrats
		control=1
	elif [[ response -gt numfiles ]]
	then
		echo "your guess is too high"
	else
		echo "your guess is too low"
	fi
done
