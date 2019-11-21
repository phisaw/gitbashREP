#!/bin/bash
# Bash Menu made by... not me

PS3='Please enter your choice: '
options=("create a new note" "add text to note" "create a copy of note" "Quit")
select choice in "${options[@]}"
do
    case $choice in
        "create a new note")
            echo > notes.txt
            ;;
        "add text to note")
            echo "add text to note:"
            read content
            echo $content > notes.txt
            ;;
        "create a copy of note")
            echo "create copy of note"
            cp notes.txt ./
            ;;
        "Quit")
            echo "script exiting"
            break
            exit 0
            ;;
            
        *) echo "invalid option $REPLY";;
    esac
done