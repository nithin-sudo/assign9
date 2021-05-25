#!/bin/bash -x
echo "employee wage computaion"
random=$((RANDOM%3))
wage_perHr=20
case $random in
	1)echo "employee is present"
	day_hr=8
		;;
	2)echo "employee parttime present"
	day_hr=4
		;;
	*) echo "employee is absent"
	day_hr=0
		;;
esac
wage_calc=$(($wage_perHr*$day_hr))
echo "salary is : $wage_calc"
