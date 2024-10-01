#!/bin/bash
#Date: 10/1/2024
#
#======================task===========================
#
#create multiple user through funcation
#
#funcation declaration
#
function create_user {

 echo "Enter username..."

 read username

 echo "Enter password...."

 read password

 sudo useradd -m $username -p $password

  echo "user created successfully------------------$username"
}

function dele_user {
	read -p "Enter username you want to delete" username
	sudo userdel -r $username
	echo "user delete successfully $username"
}
function show_user {
      echo "Welcome to usermanagemet automation "
      echo "here you can create a user  or delete user for that choose option between c or d otherwise script will not work"
}
case "$1" in 
	c) 
	echo "create user :"
	create_user
	;;
        d)
	echo "delete user:"
	dele_user
	;;
        *)
	echo "sorry please read below statement in order to create user  or del user:))"
	show_user
	;;
esac
	
