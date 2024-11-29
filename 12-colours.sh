#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%H-%M-%S)
SCRIPT_NAME=$(echo 0 | cut '.' -f1 )
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

echo "Script started executing at: $TIMESTAMP"
VALIDATE(){
    if [ $1 -ne 0 ]
    then  
        echo -e "$2 ....$R Failure $N"
        exit 1
    else
        echo -e "$2 ....$G Success $N" 
    fi

}

if [ $USERID -ne 0 ]
then
    echo "Please Run script as Super User "
    exit 1
else 
    echo "You are a Super User"
fi



dnf install mysql -y &>>$LOGFILE
VALIDATE $? "INSTALLING MYSQL"

dnf install git -y &>>$LOGFILE
VALIDATE $? "INSTALLING git"

dnf install dockerr -y &>>$LOGFILE
VALIDATE $? "INSTALLING dockerr"
