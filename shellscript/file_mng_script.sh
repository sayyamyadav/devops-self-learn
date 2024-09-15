#!/bin/bash #shebang
#Authore: Sayyam Yadav
#Date: 14/09/2024
#
#
#create a directory name "backup" in a user's home directory
#

#
BACKUP_DIR="$HOME/backup" ## Define the backup directory path

#check if backup directory already exsist or not
if [ -d BACKUP_DIR ]; then
	echo "directory already exsist $Home ."
	
else
        echo "backup directory created successfully"
	#create a new backup directory
	mkdir "$BACKUP_DIR"

fi
#
#
#
#copy all .txt files form the current directory to the backup directory
SOURCE_DIR="/home/sayyam/gitrepo/myProject"

chmod +x "$SOURCE_DIR"
#
#

cp -r "$SOURCE_DIR"/*.txt "$BACKUP_DIR"

if ls "$BACKUP_DIR"; then
	echo "all txt file exsist in the $BACKUP_DIR FROM $SOURCE_DIR"

else
	echo "no file exsist in $BACKUP_DIR"
fi


##   Append all the current date and time to the filename of the copy file.
#
CURRENT_DATE=$(date +"%y-%m-%d-%H-%M") ##store  date using date commond  
if [ -d BACKUP_DIR ]; then
	echo "Directory does'nt exsist"

else 
	cd "$BACKUP_DIR"
	rename "s/\.txt/_$CURRENT_DATE.txt/" *.txt
	echo "all the file has been succesfully rename$(ls )\nhere the files appent with current time and date"
fi


