#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $R FAILED $N"
        exit 1
    else
        echo -e "$2 ... $G SUCCESS $N"
    fi
}

sudo cp /home/vagrant/shell-script/ssmtp.conf /etc/ssmtp/ssmtp.conf &>> $LOGFILE

VALIDATE $? "COPIED SUCCESSFULLY!!!"

# Define the recipient email address, subject, and body
TO="recipient@example.com"
SUBJECT="Test Email from Shell Script"
BODY="This is a test email sent from a shell script using Gmail."


# Define the email headers and body
EMAIL="To: $TO
Subject: $SUBJECT

$BODY"

# Send the email using ssmtp
echo "$EMAIL" | ssmtp $TO &>> $LOGFILE

# Print a message indicating the email has been sent
echo "Email sent to $TO."


