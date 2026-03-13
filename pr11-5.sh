#!/bin/bash
# if statement to check if the user is 18 or older and print appropriate message
#
echo "How old are you?"
read -r AGE
if [ "$AGE" -ge 18 ]; then
    echo "Your age is OK - Enter the site"
else
    echo "Your are too jung - go away"
fi