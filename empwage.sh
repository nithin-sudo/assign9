#!/bin/bash -x
echo "employee wage computaion"
isPresent=1
isPartPresent=2
wage_per_hr=20
day_hr=8
part_day_hr=4
month=20
empwage=0
for ((i=1; i<=$month; i++))
do
	random=$((RANDOM%3))
	case $random in
		$isPresent)echo "employee is full time present
		salary=$(($wage_per_hr*$day_hr))
		empwage=$(($empwage+$salary))
			;;
		$isPartPresent)echo "employee parttime present"
		salary=$(($wage_per_hr*$day_hr))
                empwage=$(($empwage+$salary))
			;;
		*) echo "employee is absent"
		salary=0
		empwage=$(($empwage+$salary))
			;;
	esac
done
echo "salary for a month :$empwage"
