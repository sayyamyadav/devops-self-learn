#!/bin/bash
#=====================================good practice while writng any shell script commond============================
#i
## #################################
#Authore: Sayyam Yadav
#Date: 9/92024
#
#this script output the node Health
#
#
#Version V1

set -x # debug mode
set -e # error if the script have any error like we have in line 10L if we uncomment that line and comment set -e then script will still execute but if we uncomment s
set -o pipefail
#
# set -e and then try to excute  line 10 then script will not excute it will stop and show error that this line have issue

# drawback if there is a pipe  in script then although we have set -e commond script will still execute for exampe commomn pipefail and add pipe 
#
#
#so that's why here comes set -o commond if we use that and then try to run script line 10L then it will stop excute and show error if we run the script s
#bjbvjbjvb cjbvjbcjvbjcbv jbvjcbvjc line 10l | echo "sxb" 

df -h

free -g


nproc

ps -ef | grep bin | awk -F " " '{print$2}'
