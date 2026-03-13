#!/bin/bash
# Usage: ./pr11-1.sh username
# also works with ./pr11-1.sh $USER
# Check if a username is provided
# allows you to create a homepage for the current user
echo "Creating html directory"
mkdir /home/$1/html
echo "<h1>$1's     Homepage</h1>" > /home/$1/html/index.html