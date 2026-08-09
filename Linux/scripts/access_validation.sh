#!/bin/bash


read -p "Enter filename : " FILENAME


if [ -f "$FILENAME" ] && [ -r "$FILENAME" ] && [ -w "$FILENAME" ] ; then


echo "File Ready For Automation"


else 


echo "File Not Ready For Automation"



fi



