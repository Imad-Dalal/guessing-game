#!/usr/bin/env bash

function count_files {
    echo $(ls -1 | wc -l)
}

function check_guess {
    local actual=$1
    local guess=$2
    
    if [[ $guess -lt $actual ]]
    then
        echo "Too low!"
        return 1
    elif [[ $guess -gt $actual ]]
    then
        echo "Too high!"
        return 1
    else
        echo "Congratulations! You guessed correctly!"
        return 0
    fi
}

main() {
    local actual_count=$(count_files)
    local user_guess
    local correct=1
    
    echo "Welcome to the guessing game!"
    echo "How many files are in the current directory?"
    
    while [[ $correct -ne 0 ]]
    do
        read -p "Enter your guess: " user_guess
        
        if ! [[ "$user_guess" =~ ^[0-9]+$ ]]
        then
            echo "Please enter a valid number."
            continue
        fi
        
        check_guess $actual_count $user_guess
        correct=$?
    done
}

main