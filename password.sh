#!/bin/bash

echo "Welcome. This is a password Generator."

function generate(){
    tr -dc '[:alnum:][:punct:]' < /dev/urandom | fold -w 12 | head -n 1
}

while true
    do
        echo "Your password is: $(generate)"
        read -p "You need another password? Y or N: " response
    if [[ "$response" ==  [yY] ]] 
        then
            generate
        else
            break
    fi
done


