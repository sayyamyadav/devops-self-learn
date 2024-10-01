#!/bin/bash
#Date: 10/1/2024
#
#======================task===========================
#
#create multiple user
#
for (( i=1 ; i<=3 ; i++ ))
do
echo "Enter username..."

read username

echo "Enter password...."

read password

sudo useradd -m $username -p $password

echo "user created successfully------------------$username"
done
