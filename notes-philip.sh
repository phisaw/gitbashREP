#!/bin/bash
$1=notes.txt
notespath=~/skola/bash-data/notes.txt
customnotespath=~/skola/bash-data/$1.txt
deleteNote=~/skola/bash-data/*.txt
PS3='Please enter your choice:'
choices=("create a new note" "add text to note" "create a copy of note" "Quit")
select choice in "${choices[@]}"
do
    case $choice in
        "create a new note")
            rm -f $deleteNote
            #removes need for if statement. removes exception if no file found
            if [[ $1 ]]; then
            echo > $customnotespath
            echo "<note '$1.txt' was created>"
            else 
            echo > $notespath
            echo "<note 'notes.txt' was created>"
            fi
            ;;
        "add text to note")
            echo "add text to note:"
            read content
            
            if [[ -f $notespath ]]; then
                echo $content > $notespath
            else 
                echo $content > $customnotespath
            fi
            ;;
        "create a copy of note")
            echo "enter filename of new copy:"
            read copyname

            if [[ -f $notespath ]]; then
            cp $notespath $copyname.txt
            else 
            cp $customnotespath $copyname.txt
            fi
            ;;
        "Quit")
            echo "script exiting"
            break
            exit 0
            ;;
            
        *) echo "invalid option $REPLY";;
    esac
done