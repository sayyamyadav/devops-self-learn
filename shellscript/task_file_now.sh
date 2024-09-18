#!/bin/bash
#Authore :Sayyam Yadav
#Date: 18/9/2024
#
#
#Write a script for printing all file related information in present working directory (e.g.: size, permission & size etc…)
#
 << END
ls -ltrh


for a in {1..10}
do
	if [ $a == 10 ]
	then break 
		fi
		echo "Itration $a"
	done

# until loop 
#
#
a=0
	until [ $a -gt 10 ];
	do
		echo "$a"
a=$((a + 1))
	done

#normal all langauge common for loop
#
#
for (( i=0; i<10 ;i++ ))
do
	echo $i
done

echo "print for no of line"
read n
num=1
for (( i=1; i<=$n ;i++))
do
	for (( j=1
		; j<=$i ; j++ ))
do
	echo -n "$num "
	num=$((num + 1))	
    
done
echo 
done

END

while IFS= read -r line; do
       echo $line
       sleep 1
	    # Process each line here
	    done < user_list.txt
