#!/bin/bash

level=$(sed '1q;d' bandit.txt)

if [ $# -eq 0 ]
then

password=$(sed '2q;d' bandit.txt)

sshpass -p "$password" ssh bandit$level@bandit.labs.overthewire.org -p 2220

else

((level++))
echo -e "$level\n$1" > bandit.txt

fi
