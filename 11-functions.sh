#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2....Failure"
        exit 1
    else
        echo "$2...Success"
    fi
}
if [ $USERID  -ne 0 ]
then 
 echo "Please run your script with root access"
 exit 1 #Manually exits if error comes
 else
 echo "you are a super user"
 fi 

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "INSTALLING MYSQL"
 
dnf install git -y &>>$LOGFILE
VALIDATE $? "INSTALLING git"


