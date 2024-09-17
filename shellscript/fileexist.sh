#!/bin/bash
#Authore:sayam yadava
#Date 17/09/2024
#
#
echo "search file or dir specify path : "
read f_path

if [ -d $f_path ]; then
	echo "directory exsist at the path $f_path"
elif [ -f $f_path ]; then
	echo "file exsist at the path $f_path"
else
	echo "no such file or dir exsist at the path $f_path"
fi
