#!/bin/bash


read -p "Configuration filename : " FILENAME


if [ -f "$FILENAME" ] && [ -r "$FILENAME" ] && [ -s "$FILENAME" ] ; then


echo "Valid Configuration File"

else 

echo "Invalid Configuration File"


fi


