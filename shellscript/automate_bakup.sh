#!/bin/bash
#Authore: Sayyam yadav
#Date: 15/9/2024
#
## Take directory path as input from user
echo "Enter the path of the directory you want to create a backup of:"
read dir_path
#
## Get the current date in the format YYYY-MM-DD
currentDate="$(date +%Y-%m-%d)"
#
## Check if the directory exists
if [ ! -d "$dir_path" ]; then #### if directory does'nt exsist then this conditonn will execute
    echo "Error: Directory '$path' does not exist."
        exit 1
        fi
#
#        # Define the backup filename (e.g., backup_2024-09-15.tar.gz)
        current_file_backup="backup_$currentDate.tar.gz"
#
#        # Define the backup location (in your home directory)
        backup_for_dir="$HOME"
#
#        # Create the backup
        tar -czf "$backup_for_dir/$current_file_backup" -C "$(dirname "$path")" "$(basename "$path")"
#
#        # Check if the tar command was successful
        if [ $? -eq 0 ]; then
            echo "Backup of the directory has been successfully created at $backup_for_dir/$current_file_backup"
            else
                echo "Error: Backup failed."
                fi
#
 
