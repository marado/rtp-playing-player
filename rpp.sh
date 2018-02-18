#!/bin/bash

if [ $# -eq 0 ]
    then echo "No arguments supplied. Please provide an URL."
    exit
fi

mplayer https://streaming-ondemand.rtp.pt/$(wget $1 -o /dev/null -O -|grep fileKey|cut -d\" -f2)
