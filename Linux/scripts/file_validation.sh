#!/bin/bash


read -p "Enter filename : " FILENAME


if [ -f "$FILENAME" ] && [ -s "$FILENAME" ] ; then 


echo "Valid Data File"

else

echo "Invalid Data File"



fi
