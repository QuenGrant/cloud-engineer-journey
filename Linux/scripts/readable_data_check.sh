#!/bin/bash


read -p "Enter filename : " FILENAME


if [ -f "$FILENAME" ] && [ -r "$FILENAME" ] && [ -s "$FILENAME" ] ; then


echo "Readable Data File"

else

echo "Not A Readable Data File"



fi



