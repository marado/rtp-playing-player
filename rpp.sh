#!/bin/bash

mplayer $(wget $1 -o /dev/null -O -|grep hls_url |cut -d: -f2-|cut -d\" -f2)
