#!/bin/bash
#Authore: SayyamYadav
#Date: 13/9/2024
#
#
#MATH EXPRESSION IN BASH SCRIPT
#
#
a=10
b=5
#---------------------ADDITION-------------------
#
#
#
echo "ADDITON OUTPUT==============================$(expr $a + $b)"

#======================SUBSTRACTION------------------
#
#
echo "SUBSTRACTION OUTPUT==========================$(expr $a - $b)"


#------------------------DIVIDE------------------------
#

echo "DIVIDE OUTPUT=================================$(expr $a / $b)"

# -----------------------------MULTIPLE-----------------
#
# multiple does'nt work like * because in bash script it taken as a regular expression------------
#
#
# 
echo "MULTIPLE OUTPUT===============================$(expr $a \* $b)"
