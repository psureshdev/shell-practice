#!/bin/bash/

#validating root user
userid=$(id -u)

if [ $userid -eq 0 ]
then
    echo "running with root user"
else 
    echo "pls run with root user"
    exit 1
fi

#validate function
validate (){
if [ $1 -eq 0 ]
then 
    echo "$2 is installed"
else 
    echo "$2 is failure"
    exit 1
fi
}

#tree installing
dnf list installed tree
if [ $? -ne 0 ]
then
    echo "tree is not installed"
    dnf install tree -y
    validate $? tree
else 
   echo "tree is installed"
fi