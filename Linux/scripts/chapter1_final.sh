#!/bin/bash


read -p "Enter configuration filename : " FILENAME


if [ -f "$FILENAME" ] && [ -r "$FILENAME" ] && [ -w "$FILENAME" ] && [ -s "$FILENAME" ] ; then


echo "Configuration File Valid"


else


echo "Configuration File Invalid"



fi



