#!/bin/bash -x
function wrkhrs()
{
 case $1 in
	   2) echo "8" ;;
	   1) echo "4" ;;
 	   0) echo "0" ;;
 esac
}
declare -a Day
echo "employee wage computaion"
isPresent=1
isPartPresent=2
wage_per_hr=20
month=20
Totalwage=0
for((i=1; i<=20; i++))
do
	ran=$((RANDOM%3))
	Day[$i]=$(($wage_per_hr*`wrkhrs $ran`))
	Totalwage=$(($Totalwage+${Day[$i]}))
done
echo ${Day[@]}
echo "salary of $Totalwage credited for 20 days"
