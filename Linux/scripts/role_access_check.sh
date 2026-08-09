#!/bin/bash

read -p "Enter username: " USERNAME
read -p "Enter role: " ROLE

if [ "$USERNAME" = "admin" ] && [ "$ROLE" = "cloud-engineer" ]; then

    echo "Administrative Cloud Access Granted"

else

    echo "Administrative Cloud Access Denied"

fi
