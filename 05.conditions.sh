#!/bin/bash/

# -lt --> less than
# -gt --> greater than
# -eq --> equal
# -ne --> not equal
number=$1
if [ $number -lt 10 ]
then 
echo "given $number less than 10"
else
echo "given $number greaterthan 10"
fi

if [ $number -ne 10 ]
then 
    echo "given $number is not equal to 10"
else
    echo "given $number is equal to 10"
fi