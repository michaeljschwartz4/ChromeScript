#!/bin/bash
# This script allows you to open groups of tabs in Chrome from the terminal
# and can save you time if you find yourself opening the same groups of tabs
# every time you are working on things.

# Opens chrome with the desired URLs
openChrome() {
    # Add --profile-directory-"Profile N" after --args with N as the desired profile 
    # number if you want to open chrome in a specific profile
    open -n -a "Google Chrome" --args "$@"
}

# Passes specific URLs to openChrome so that they all open under one window
# 
# Enter desired URLs into quotes following openChrome command
template() {
    openChrome "https://twitter.com"
    openChrome "https://gmail.com"
    openChrome "https://youtube.com"
}

# Example to show -template2 command
template2() {
    openChrome "https://https://t3.ftcdn.net/jpg/05/06/73/60/360_F_506736001_7mnplZMvVhfUmOU1VaSBnYv6T7TSPPhF.jpg"
}

# Allows you to open specific groups of tabs if desired!
# Create more by adding elif [ "$1" == "-<your_input_here>" ] below other cases
if [ "$1" == "-template" ]; then
    template
elif [ "$1" == "-template2" ]; then
    open422
else
    echo "Usage: $0 -template1 | -template2" # Replace template1 and template2 with the commands you create
fi;
