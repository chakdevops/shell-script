#!/bin/bash

PERSON1=$1
PERSON2=$2

echo "$PERSON1: Hello $PERSON2, Good morning!"
echo "$PERSON2: Hi $PERSON1, Very Good morning"
echo "$PERSON1 How are you $PERSON2?"
echo "$PERSON2 I am good $PERSON1, How abt you?"

echo "args passed:: $#"
echo "Script name:: $0"
echo "all arguments:: $@"
