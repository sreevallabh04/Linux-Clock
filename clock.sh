#!/bin/bash

# Trap the SIGINT signal (e.g., when pressing Ctrl+C) to allow for a graceful exit
trap "tput cnorm; echo -e '\e[0m'; echo 'Exiting...'; exit 0" SIGINT

# Hide the cursor
tput civis

# Clear the screen initially
clear

# Start an infinite loop
while true
do
    # Move the cursor to the top-left corner of the screen
    tput cup 0 0
    
    # Print the current time in HH:MM:SS format in green color without a newline
    echo -ne "\e[32m$(date +%T)\e[0m"
    
    # Sleep for 1 second before updating the clock again
    sleep 1
done

# Show the cursor again when exiting
tput cnorm
