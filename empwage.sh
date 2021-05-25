#!/bin/bash 
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
totalwage=0
read -p "enter the day for total wage:" nmb
for((i=1; i<=$nmb; i++))
do
	ran=$((RANDOM%3))
	Day[$i]=$(($wage_per_hr*`wrkhrs $ran`))
	totalwage=$(($totalwage+${Day[$i]}))
done
for i in ${!Day[@]}
do
	echo "Day $i = ${Day[$i]}"
done
echo "Totalwage is $totalwage credited for $nmb days"
