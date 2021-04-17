#!/bin/bash -x

read -p "num: "
#num= 545

# Storing the remainder
s=0

# Store number in reverse
# order
rev=""

# Store original number
# in another variable
temp =$num

while [ $num -gt 0 ] 
do
	# Get Remainder
	s=$(( $num % 10 ))
	
	# Get next digit
	num=$(( $num / 10 ))
	
	# Store previous number and
	# current digit in reverse
	rev=$( echo ${rev}${s} )
done

if [ $temp -eq $rev ];
then
	echo "Number is palindrome"
else
	echo "Number is NOT palindrome"
fi
________________________________________

#storing the number to be checked
read -p "num: "
i=2

#flag variable
f=0

#running a loop from 2 to number/2
while test $i -le `expr $number / 2`
do

#checking if i is factor of number
if test `expr $number % $i` -eq 0
then
f=1
fi

#increment the loop variable
i=`expr $i + 1`
done
if test $f -eq 1
then
echo "Not Prime"
else
echo "Prime"
fi

