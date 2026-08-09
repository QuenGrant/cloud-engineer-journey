#!/bin/bash

read -p "Enter backup filename: " FILENAME

if [ -f "$FILENAME" ] && [ -s "$FILENAME" ]; then

    echo "Backup File Valid"

else

    echo "Backup File Invalid"

fi
