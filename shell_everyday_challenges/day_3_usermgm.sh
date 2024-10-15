#!/bin/bash
#Date 14/10/2024
#
#
#Challenge: User Account Management
#
#----------------------UserCreation------------------------
#Part 1: Account Creation
#Implement an option -c or --create that allows the script to create a new user account. The script should prompt the user to enter the new username and password.
#
#Ensure that the script checks whether the username is available before creating the account. If the username already exists, display an appropriate message and exit gracefully.
#
#After creating the account, display a success message with the newly created username.
#

function create_user {
	min_length=3
	max_length=16
	read -p "Enter username " username
	echo "Name of the User is -------------$username"
	if [[ ! "${username}" =~ [a-z] ]]; then
		    echo "INVALID USERNAME it must $username contain string"
		    exit

	fi
	read -p "Enter password " userpss
	if [[ ! "${userpss}" =~ [a-z] ]]; then
		echo "Password must contain lower-case in it"
		exit
	elif [[ ! "${userpss}" =~ [A-Z] ]]; then
		echo "Password must contain at one uppr-case in it" 
		exit
	elif [[ ! "${userpss}" =~ [0-9] ]]; then
		echo "Password must contain a digit in it "
		exit
		
	fi	
        sudo useradd -m $username
	if [ $? -eq 0 ]; then
		echo "User :--$username created successfully"
	else
		if id $username; then
			echo "User $username already exsist :))"
		else
			echo "something when wrong please try again :(("
		fi
	fi	

}

#-----------------------Part 2: Account Deletion---------------------------------------------
function user_delete {
           read -p "Enter username " username
	   if id $username &>/dev/null; then
		   sudo userdel $username
		   if [ $? -eq 0 ]; then
			   echo "User ----$username successfully deleted"
		   else
			   echo "Sorry! Something went wrong :((("
		   fi
	   else
		   echo "User---$username don't exsist please create user first"
	   fi
}
#--------------------------Part 3: Password Reset----------------------------------------------------
function reset_password {
	read -p "Enter username to reset password: " username
	read -sp "Enter new password: " new_password
	echo
	 # Check if the user exists
	 if id $username &>/dev/null; then
		 echo "$username:$new_password" | sudo chpasswd
		 if [ $? -eq 0 ]; then
			 echo "password reset successfully for user $username "
		 else
			 echo "Failure to reset password"
		 fi
	 else
		 echo "User---$username don't exsist please create user first"
	 fi
}
function list_user {
	read -p "Enter the username to list th detail " username
	# Check if the user exists
	if id $username &>/dev/null; then
		echo "Details for User $username"
		echo "----------------------------------------"
		getent passwd $username
		echo
		id "$username"
	else
		echo "User---$username don't exsist please create user first"
	fi
}
function usage {
	echo "Options for user management------------"
	echo "option -c or --create for createing a new user"
	echo "option -d or --delete for deleting exsisting any User"
	echo "option -r or --reset is for reseting the password of any User"
	echo "option -l or --list for listing user detail"
	echo "  -h, --help     Display this help message."
	exit 0

}

case "$1" in
	-r|--reset)
		reset_password
		;;

	-c|--create)
		create_user
		;;
	-d|--delete)
		user_delete
		;;
	-l|--list)
		list_user
		;;
	-h|--help)
		usage
		;;
esac

#create_user
#user_delete
#reset_password
#list_user
