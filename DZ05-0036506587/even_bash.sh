#!/bin/bash

# This script determines whether a given number is even or odd.
# Takes one argument.


if [[ $(($1 % 2)) -eq 0 ]]
then
	echo "$1 is even";
else
	echo "$1 is odd";
fi

