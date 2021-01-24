#!/bin/sh

echo '
  ,ad8888ba,  88           ,ad8888ba,                                  88
 d8``    ``8b ``   ,d     d8``    ``8b                                 88
d8`                88    d8`                                           88
88            88 MM88MMM 88             ,adPPYba,  8b,dPPYba,  ,adPPYb,88
88      88888 88   88    88            a8`     `8a 88P`   `Y8 a8`    `Y88
Y8,        88 88   88    Y8,           8b       d8 88         8b       88
 Y8a.    .a88 88   88,    Y8a.    .a8P `8a,   ,a8` 88         `8a,   ,d88
  ``Y88888P`  88   `Y888   ``Y8888Y``   ``YbbdP``  88          ``8bbdP`Y8
  
88888888ba
88      `8b              ,d
88      ,8P              88
88aaaaaa8P`  ,adPPYba, MM88MMM
88``````8b, a8`     `8a  88
88      `8b 8b       d8  88
88      a8P `8a,   ,a8`  88,
88888888P`   ``YbbdP``   `Y888


'
echo 'Shell script by calebrwalk5 aka anusO1'
echo 'Developed by Hyperz'
if test "`whoami`" != "root" ; then
	echo "You must be logged in as root to install/run this bot"
	echo "Enter 'su' or 'sudo bash' to switch to root"
	exit
fi

echo 'Type "Install" or "Run"'
read OPTION

if ["$OPTION" = "Install"] 
then
    sudo apt update && sudo apt upgrade
    sudo apt install npm
    sudo apt install yarn
    npm install discord.js
    yarn
    yarn serve
else
    yarn serve
fi
