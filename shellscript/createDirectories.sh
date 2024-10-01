#!/bin/bash
# ================================================TASK========================
# Create Directories Using Shell Script:
#
# Write a bash script createDirectories.sh that, when executed with three arguments (directory name, start number of directories, and end number of directories), creates a specified number of directories with a dynamic directory name.
# Example 1: When executed as ./createDirectories.sh day 1 90, it creates 90 directories as day1 day2 day3 ... day90.
# Example 2: When executed as ./createDirectories.sh Movie 20 50, it creates 31 directories as Movie20 Movie21 Movie22 ... Movie50.
# Notes: You may need to use loops or commands (or both), based on your preference
#
#
## Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <directory_name> <start_number> <end_number>"
        exit 1
        fi
 # Assign arguments to variables
       dir_name=$1
        start_num=$2
        end_num=$3

        # Loop from start to end number
       for ((i=start_num; i<=end_num; i++)); do
     # Create the directory
                mkdir "${dir_name}${i}"
                done

                echo "Created directories from ${dir_name}${start_num} to ${dir_name}${end_num}."
                
