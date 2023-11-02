#!/bin/bash




echo "Enter a number: "
read num
range=`expr $num - 1`

prime=1


for i in `seq 2 $range`
do
	res=`expr $num % $i`
	if [ $res -eq 0 ]
	then
		prime=2
		break

	fi
done

if [ $prime -eq 1  ]
then
	echo "Its prime Number"
else 
	echo "Its no a prime Number"
fi






















