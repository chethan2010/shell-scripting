#!/bin/bash

USERID=$(id -u)
if [ $USERID  -ne 0 ]
then 
 echo "Please run your script with root access"
 else
 echo "you are a super user"
 fi 



#sudo dnf install mysql -y


