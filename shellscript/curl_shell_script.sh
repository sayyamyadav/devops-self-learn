#!/bin/bash
#Authore: Sayyam Yadav
#Date: 9/9/2024
#using curl commond find out the error from the data 
#
set -x
set -e
set -o pipefail

curl https://raw.githubusercontent.com/iam-veeramalla/sandbox/main/log/dummylog01122022.log

curl https://raw.githubusercontent.com/iam-veeramalla/sandbox/main/log/dummylog01122022.log | grep ERROR
