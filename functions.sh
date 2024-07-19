#!/bin/bash

ID=$(id -u)
#Log file
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"


#Function
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "ERROR:: $2 ... FAILED"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 # you can give other than 0
else
    echo "You are root user"
fi # fi means reverse of if, indicating condition end

yum install mysql -y

VALIDATE $? "Installing MySQL" # here, $? takes exit status argument as $1 and 
#the statement "Installing MySQL" takes as the argument $2,
#it will go to the function VALIDATE() and check the 'if' condition $1 as $? exit status -ne 0,
#print the error and if the exit status is 0 consider it as the root user and proceed with the 
#installation and print the "Installing MySQL" statement coz it takes the $2 argument
#o/p we will get as "Installing MySQL SUCCESS"

yum install git -y

VALIDATE $? "Installing GIT"
