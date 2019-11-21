#!/bin/bash
# Bash Menu made by... not me

PS3='Please enter your choice: '
options=("skapa ny anteckningsfil" "Option 2" "Option 3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "skapa ny anteckningsfil")
            echo "enter name of document:"        
            rm /Users/philip/Documents/uppgift/*.txt
            read docname
            > $docname.txt
            echo "skapar fil med namn $docname"
            ;;
            

        "Option 2")
            echo "add text to note"
            echo >> $docname.txt;;
        "Option 3")
            echo "you chose choice $REPLY which is $opt"
            ;;
        "Quit")
            break
            exit 0;;
            
        *) echo "invalid option $REPLY";;
    esac
done