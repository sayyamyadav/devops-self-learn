#!/bin/bash
#Date:3/10/2024
#
#-------------------------------------------------------------------------------------
#Task 1: Comments
#In bash scripts, comments are used to add explanatory notes or disable certain lines of code. Your task is to create a bash script with comments explaining what the script does.
#
#shell is a command-line interface that allows users to interact with the operating system. It acts as an intermediary between the user and the kernel, enabling users to execute commands, run scripts, and manage files and processes.
#
#scripts are basically create to automate task you perform as devOps engineer on day to day basis so that manully effo0# ts decreases
#
#  Type of shell
#  Bash (Bourne Again SHell)
#  shell
#  ksh
#  corn shell  
#
#------------------------------------------------------------------------------------------------
#  Task 2: Echo
#  The echo command is used to display messages on the terminal. Your task is to create a bash script that uses echo to #  print a message of your choice.
#
echo "Hello dosto"
#---------------------------------------------------------------
#Task 3: Variables
#Variables in bash are used to store data and can be referenced by their name. Your task is to create a bash script that declares variables and assigns values to them.
#
#
read -p "a= " a
echo "Hello $a"
#-----------------------------------------------------------------------------------
#
#Task 4: Using Variables
#Now that you have declared variables, let's use them to perform a simple task. Create a bash script that takes two variables (numbers) as input and prints their sum using those variables.
#
echo "perfrom sum of two no by taking user input============"
read -p "Enter a value:" a
read -p "Enter second value:" b
sum=$((a + b))
echo "Sum of two no is===========$sum"
#
#Task 5: Using Built-in Variables
#Bash provides several built-in variables that hold useful information. Your task is to create a bash script that utiliz#es at least three different built-in variables to display relevant information.
#
read -p "Enter username  " user
current_user=$user
current_date=$(date +"%d-%H-%M-%S")
echo "Name of the current user is $user"
echo "current time you check $current_date"
echo "your current working directory exact location is $(pwd)"
echo "list of all the file and folder exist in your cuurent $(pwd) location is \n$(pwd | ls)"
#----------------------------------------------------------------------------------------------
#Task 6: Wildcards
#Wildcards are special characters used to perform pattern matching when working with files. Your task is to create a bas#h script that utilizes wildcards to list all the files with a specific extension in a directory.
#
read -p "Enter the directory path: " path
if [ -d $path ]; then
	echo "$path directory exsit"
	read -p "enter any file extenstion like .txt,.jgp and many more  to check all th files" ext
	echo "$(ls -t *${ext})"
else
	echo "$path does'nt exist anywhere"
fi
