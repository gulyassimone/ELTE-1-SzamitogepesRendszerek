#!/bin/sh

echo -n "Enter number: "
read n

sd=0
sum=0
while [ $n -gt 0 ]
do
	sd=$(( $n % 10 ))
	n=$(( $n / 10 ))
	sum=$(( $sum + 1 ))
done 
echo "Sum of all digit is $sum"