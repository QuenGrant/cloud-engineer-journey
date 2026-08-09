#!/bin/bash


read -p "Enter filename : " FILENAME


if [ -f "$FILENAME" ] && [ -x "$FILENAME" ] ; then


echo "Executable Script Found"

else

echo "Not An Executable Script"


fi



