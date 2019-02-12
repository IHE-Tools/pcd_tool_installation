#!/bin/sh

touch logs/catalina.out
rm -r logs/*
touch logs/catalina.out

./bin/startup.sh
tail -f logs/catalina.out
