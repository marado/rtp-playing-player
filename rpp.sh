#!/bin/bash

if [ $# -eq 0 ]
    then echo "No arguments supplied. Please provide an URL."
    exit
fi

mplayer $(wget $1 -o /dev/null -O -|grep hls_url |cut -d: -f2-|cut -d\" -f2)
