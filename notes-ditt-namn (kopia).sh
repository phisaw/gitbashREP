#!/bin/bash
# Bash Menu made by... not me

PS3='Please enter your choice: '
choices=("create a new note" "add text to note" "create a copy of note" "Quit")
select choice in "${choices[@]}"
do
    case $choice in
        "create a new note")
            rm  ./*.txt
            echo > notes.txt
            echo "<note 'notes.txt' was created>"
            ;;
        "add text to note")
            echo "add text to note:"
            read content
            echo $content > notes.txt
            ;;
        "create a copy of note")
            echo "enter filename of new copy of notes.txt"
            read copyname
            cp notes.txt $copyname.txt
            ;;
        "Quit")
            echo "script exiting"
            break
            exit 0
            ;;
            
        *) echo "invalid option $REPLY";;
    esac
done