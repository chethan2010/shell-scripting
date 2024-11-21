#!/bin/bash

USERID=$(id -u)
if [ $USERID  -ne 0 ]
then 
 echo "Please run your script with root access"
 exit 1 #Manually exits if error comes
 else
 echo "you are a super user"
 fi 

sudo dnf install mysql -y
 
if [ $? -ne 0 ]
then
    echo "Installation of mysql failed...."
    exit 1
else 
    echo "Installation of mysql is success"

echo "script is proceding"
