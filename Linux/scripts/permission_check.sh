#!/bin/bash


read -p "Enter filename : " FILENAME


if [ -r "$FILENAME" ] && [ -w "$FILENAME" ] ; then

echo "File Is Readable And Writable"

else

echo "File Is Not Fully Accessible"


fi



