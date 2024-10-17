#!/bin/bash
#Date: 1/10/2024
#
#======================task===========================
#
#create delete user through funcation
#
#funcation declaration
#
function delete_user {

 echo "Enter username you want to delete..."

 read username

 sudo userdel -r $username

  echo "user delete successfully------------------$username"
}
#funcation calling
for (( i=1 ; i<=3 ; i++ ))
do
     delete_user
done
