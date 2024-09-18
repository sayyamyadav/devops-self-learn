#!/bin/bash
#Authore: Sayyam Yadav
#Date: 18/9/2024
#
#
# test wherether commond run successfully or not
#
./fileexist.sh /home/sayyam/gitrepo/shellscript

status=$?


if [ $status -eq 0 ]; then
       echo "commond is avaliable.."
       exit 0
else 
	echo "commond does'nt exsist"
exit 1
fi
