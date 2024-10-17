#!/bin/bash
#Date:10/1/2024
#
#---------------task to print I will complete #90DaysOfDevOps challenge----------------------
#
#
echo "I will complete #90DaysofDevOps challenge"

#-----Write a Shell Script that takes user input, input from arguments, and prints the variables----
#
a=$1
b=$2

echo "variables are $1 and $2"

#---Provide an example of an If-Else statement in Shell Scripting by comparing two numbers.
#
if [ $a -eq $b ]; then
	echo "$a is equal to $b"
else
	echo "$a is not qual to $b"
fi
