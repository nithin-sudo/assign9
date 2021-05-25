#!/bin/bash -x
echo "employee wage computaion"
random=$((RANDOM%2))
case $random in
	1)echo "employee is present"
		;;
	0) echo "employee is absent"
		;;
esac
