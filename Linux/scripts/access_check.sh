#!/bin/bash


read -p "Enter filename : " FILENAME


if [ -r "$FILENAME" ] || [ -w "$FILENAME" ] ; then

echo "File Is Accessible"

else 

echo "File Is Not Accessible"


fi


