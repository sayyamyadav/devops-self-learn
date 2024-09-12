#!/bin/bash
#Authore:Sayyam Yadav
#Date: 12/9/2024
#
#
#Authomate and Create a backup of folder  ,compress the file 
#print the path e]where  the file  backup is been present
#
#
#
#
#

mkdir tempy


cd tempy

touch file{1..2}.txt
 
echo "Hello World" << file1.txt

current_dir_bac="/home/sayyam/gitrepo/shellscript/tempy" 



# Change the date format to use dashes instead of slashes
current_date=$(date +%d-%m-%Y)

tar -czvf "${current_dir_bac}-${current_date}.tar.gz" "$current_dir_bac"

echo "backup of the currentDirectory----ondate-------${current_date} on Location ===> ${current_dir_bac}"
