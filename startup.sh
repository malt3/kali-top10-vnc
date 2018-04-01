#!/bin/bash

export DISPLAY=:1
Xvfb :1 -screen 0 1920x1080x24 &
sleep 5
startxfce4&
# x11vnc -display :1 -passwd ${VNC_PASSWD} -xkb -ncache 10 -ncache_cr -forever &
x11vnc -display :1 -passwd ${VNC_PASSWD} -xkb -forever &