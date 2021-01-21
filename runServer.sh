#!/bin/sh
BINDIR=/home/minecraft/server
HEAPINIT=1g
HEAPMAX=3g

cd $BINDIR
java -Xms$HEAPINIT -Xmx$HEAPMAX -XX:+UseG1GC -jar minecraft_server.*.jar nogui
