#!/bin/bash

# Variable to store path
PAT=""

# Variable to store number of Days file since file modified
DAYS=""

# Tool usage help function
help_message(){
echo '
#############################################################
#
# Name: Modifile
# 
# This script will search and list recently modified files
#
# 
# Usage:
#
# ./modifile.sh [DIRECTORY] [DAYS]
#
# Example:
#
# ./modifile.sh /home/ 2
#
#
# Author: Obaid Shahzad
# Date: 2020/7/18
#
#############################################################
'
}

# Function to find and list all the modified files
find_files(){
    find $1 -type f -mtime $2 -ls  | awk -v OFS='\t' '{print $8,$9,$10,$11}'
    # find /etc/ -type f -mtime -2 -ls -exec ls {} \;
}

# Arguments validity
if [[ $# == 0 ]]; then
    help_message
elif [[ $2 == "" ]]; then
    help_message
else
    find_files $1 $2     
fi
