#!/bin/bash
#Authore:Sayyam Yadav
#Date:19/9/2024
#
#
dir_to_check=$1


while [ "{ls -A $dir_to_check}" ]
do
	file_count=$(find "$dir_to_check" -type f | wc -l)
	echo "count file $file_count "
	sleep 5

done

echo "Directory does'nt exsist"
