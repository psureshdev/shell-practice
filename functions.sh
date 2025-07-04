#!/bin/bash/

userid=$(id -u)

if [ $userid -ne 0 ]
then 
    echo "error: pls run with root user"
    exit 1
else
   echo "installing with root user"
fi

#validate
validate (){
    if [ $1 -eq 0 ]
    then
       echo "$2 is success"
    else
       echo "$2 failure"
       exit 1
    fi
}

#tree
dnf list installed tree
if [ $? -ne 0 ]
then 
  echo "tree not installed"
dnf install tree -y
validate $? tree
else
  echo " tree installed noting to do"
fi

#nginx
dnf list installed nginx
if [ $? -ne 0 ]
then 
  echo "nginx not installed"
dnf install nginx -y
validate $? nginx
else 
echo " tree installed noting to do"
fi
