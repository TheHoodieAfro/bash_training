#!/bin/bash

usersInfo=$(cat /etc/passwd | grep false | cut -d: -f1,6)

echo -e "${usersInfo//:/-->}" | tr " " "\n"
