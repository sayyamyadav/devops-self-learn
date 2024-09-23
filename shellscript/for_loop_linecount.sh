#!/bin/bash
#Authore:Sayyam Yadav
#date:19/09/2024
#
#count for all the text files
#
#
for file in /home/sayyam/gitrepo/shellscript/files/*.txt
do
	line_count=$(wc -l < $file)
	echo "$file no of  line in the file is $line_count" >> $file
done
