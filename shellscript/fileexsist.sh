#!/bin/bash
#Authore:Sayyam Yadav
#Date: 17/09/2024
#
#file existance check
#
echo "specify directory path :"# specify the path fir the directory yo want to check wheather exsust or not
read file_path #taking input from user

if [ -d $file_path ]; then
	echo "directory exsist................$file_path"
elif [ -f $file_path ]; then
	echo "file exsist at the path............$file_path"
else echo "dir does'nt exsist................."
fi
