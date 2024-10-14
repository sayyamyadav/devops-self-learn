#!/bin/bash
#Date:4/10/2024
#
#Part 1: File and Directory Exploration
#Upon execution without any command-line arguments, the script will display a welcome message and list all the files and directories in the current path.
#For each file and directory, the script will print its name and size in human-readable format (e.g., KB, MB, GB). This information will be obtained using the ls command with appropriate options.
#The list of files and directories will be displayed in a loop until the user decides to exit the explorer.
#
#
echo "Welcome to Day2 Challenge"

while true; do
	echo "files and Directories in the Current Path:"
        echo "-$(ls -ltrh | awk '{print $9 , $5}')"
echo "---------------------------------------------------"
 read -p "Enter exit if user want to exit the loop : " userinput
  if [ $userinput == "exit" ]; then
	  echo "exit loop .:))))...GoodBye"
	  break
  fi
done

#----------------------------------------------------
#Part 2: Character Counting
#After displaying the file and directory list, the script will prompt the user to enter a line of text.
#The script will read the user's input until an empty string is entered (i.e., the user presses Enter without any text).
#For each line of text entered by the user, the script will count the number of characters in that line.
#The character count for each line entered by the user will be displayed.
#

while true; do
        read -p "Enter any line of text here--:" line
	count_char="$(echo -n $line | wc -c)"
	#echo "$(line | wc -c)"
	if [ -z "$line" ]; then
		echo "empty string passes:"
		break
	fi
	echo "++++++++++++++++++++++++++++++++++++++++++++++"
	echo "No of Characters in the line  ${count_char}"
done
