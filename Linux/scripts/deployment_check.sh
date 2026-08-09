#!/bin/bash


read -p "Enter username : " USERNAME

read -p "Enter environment : " ENVIRONMENT


if [ "$USERNAME" = "admin" ] && [ "$ENVIRONMENT" = "production" ] || [ "$ENVIRONMENT" = "staging" ] ; then


echo "Deployment Access Granted"


else 


echo "Deployment Access Denied"


fi


