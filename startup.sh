#!/bin/bash

export DISPLAY=:1
Xvfb :1 -screen 0 1600x900x16 &
sleep 5
openbox-session&
x11vnc -display :1 -passwd ${VNC_PASSWD} -listen localhost -xkb -ncache 10 -ncache_cr -forever &