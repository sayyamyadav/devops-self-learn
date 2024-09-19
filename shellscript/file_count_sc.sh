#!/bin/bash
#Authore: Sayyam Yadav
#Date:19/9/2024
#
#
#creating a bash script to monitor a directory and count no of file in that in every 10 sec and if the dir deleted or became empty then the script show message that does'nt exist or empty
#
#
echo "print the path for dire :" 
read dir

if [ -d $dir ]; then
	if [ -z "$(ls -A "$dir")" ];
	then
		echo "dir is empty ............"
	else
		echo "have total files....$(ls -l "$dir" | wc -l)" # but it will show no of line of the list 
		#for getting total no of count of file exact count use
		echo "total file   $(find "$dir" -type f | wc -l)"
		sleep 10
	fi
else 
	echo "no such dir exsist.........................Sorry :)"
	exit 1
	
fi
	
