#!/bin/bash

USERID=$(id -u)
if [ $USERID  -eq 0 ]
then 
 echo "you are super user"
 else
 echo "you are not super user"
 fi 



#sudo dnf install mysql -y


