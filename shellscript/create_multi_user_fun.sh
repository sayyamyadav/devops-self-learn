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
#funcation calling
for (( i=1 ; i<=5 ; i++ ))
do
     create_user
done
