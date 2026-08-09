#!/bin/bash

read -p "Enter username: " USERNAME

if [ "$USERNAME" = "root" ]; then

    echo "Root Access"

else

    echo "Standard User Access"

fi
