#!bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1 )
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
y="\e[33m"
N="\e[0m"
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2....$R Failure $N"
        exit 1
    else
        echo -e "$2..... $G Success $N"
    fi
}

    if [ $USERID -ne 0 ]
    then
        echo "please run script as super user"
        exit 1
    else
        echo "You are a Super user"
    fi

    for i in $@
    do
        echo "Packages to install: $i"
        dnf list installed $i &>>$LOGFILE
        if [ $? -eq 0 ]
        then 
            echo -e "$i is already installed ..... $Y skipping $N"
        else
            echo  "$i is not installed need to be installed"
    fi 
    done
