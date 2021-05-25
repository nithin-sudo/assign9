#!/bin/bash -x
echo "employee wage computaion"
wrkhrs=0
isPresent=1
isPartPresent=2
wage_per_hr=20
day_hr=8
part_day_hr=4
month=20
empwage=0
for ((i=1; i<=$month; i++))
do
	if [ $wrkhrs -lt 100 ]
	then
		random=$((RANDOM%3))
		case $random in
			$isPresent)echo "employee is full time present"
			salary=$(($wage_per_hr*$day_hr))
			empwage=$(($empwage+$salary))
			wrkhrs=$(($wrkhrs+$day_hr))
				;;
			$isPartPresent)echo "employee parttime present"
			salary=$(($wage_per_hr*$day_hr))
                	empwage=$(($empwage+$salary))
			wrkhrs=$(($wrkhrs+$part_day_hr))
				;;
			*) echo "employee is absent"
			salary=0
			empwage=$(($empwage+$salary))
				;;
		esac
	else
		break;
	fi
done
echo "salary credited $empwage rupees for $wrkhrs hrs  in $(($i-1)) days"

