#!/bin/bash
#1 - path
#2 - type

cd $1

n=(0 1 2 3 4 5 6 7 8 9)

for var in $(ls)
do
	for num in ${n[*]}
	do
		if [ "$( head -c 1 $var )" == "$num" ] 
		then 
			mv $var $var.$2
			break
		fi
	done
done
