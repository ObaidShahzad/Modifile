# Importing os and sys modules for file handling
import os, sys

# Script usage help function
def help_message():
    print('#############################################################')
    print('#')
    print('# Name: Modifile')
    print('# ')
    print('# This script will search and list recently modified files')
    print('#')
    print('# ')
    print('# Usage:')
    print('#')
    print('# python [DIRECTORY] [DAYS]')
    print('#')
    print('# Example:')
    print('#')
    print('# python modifile.sh /home/ 2')
    print('#')
    print('#')
    print('# Author: Obaid Shahzad')
    print('# Date: 2020/7/18')
    print('#')
    print('#############################################################')

# Function to find and list all the modified files
def find_files():
    os.system("find "+sys.argv[1]+" -type f -mtime -"+sys.argv[2]+" -ls  | awk -v OFS='\t' '{print $8,$9,$10,$11}'")

# Argument validity
if(len(sys.argv) < 3):
    help_message()
else:
    find_files()
