#!/bin/bash
#Authore:Sayyam Yadav
#Date: 18/9/2024
#
#
#
echo "please enter first no "
read firstNo

echo "please enter secind no: "
read secndNo

showOption(){
	echo "==============below option are avaliable that you can perform================"
	echo "1.  Addition"
	echo "2. Substraction"
	echo "3. Divide "
	echo "4. Multiplication"
	echo  "5. exit"
}
add(){
	sum=$(( firstNo + secndNo ))
	echo "additon for two  no is ==========$sum"
}
sub(){
	sub=$(( firstNo - secndNo ))
	echo "substraction of two no is===========$sub"

}
multiplica(){
	multi=$(( firstNo * secndNo ))
	echo "multiplication is================$multi"
}
divide(){
	div=$(( firstNo / secndNo ))
	echo "divide is =================$div"
}
while true; do
	showOption
	echo "Choose operator you want to use from 1-4:"
	read -r option
	case $option in
		1) add
			exit 0
			;;
		2) sub
			exit 0
			;;
		3) divide
			exit 0
			;;
		4) multiplica
			exit 0
			;;
		5) echo "Invaid option"
			exit 0
			;;
			

	esac
done

showOption(){
echo "==========operator available----------"
echo "1. + Addition"
echo "2. -substraction"
echo "3. / divide"
echo "4 * multiplication"
echo "5 exit"

}
