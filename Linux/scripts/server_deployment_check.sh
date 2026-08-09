#!/bin/bash

read -p "Enter server status : " STATUS

read -p "Enter environment : " ENVIRONMENT



if [ "$STATUS" = "online" ] && { [ "$ENVIRONMENT" = "staging" ] || [ "$ENVIRONMENT" = "production" ]; }; then


echo "Server Ready For Deployment"

else 

echo "Server Not Ready For Deployment"


fi


