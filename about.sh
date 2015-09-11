#!/bin/bash

while :

do

name=$(cat name.txt)
version=$(cat version.txt)

clear

echo ""
echo "     ____________________________________________________________________"
echo "    |                       $name                        |\ "
echo "    |                                                                    | |    "
echo "    |                         By: Dr. Jimmy Wall                         | |    "
echo "    |                      dokterstools@dokterw.me                       | |    "
echo "    |                                                                    | |    "
echo "    |    With a background in Linux I often prefer CLI over GUI.         | |    "
echo "    |    While working in CLI you end up typing the same commands        | |    "
echo "    |    over and over again, which can often become a bit tedious.      | |    "
echo "    |    Therefor, to simplify common tasks, it is easier and more       | |    "
echo "    |    efficient to write a bash script, like this one.                | |    "
echo "    |                                                                    | |    "
echo "    |    I do not remember exactly when I first created this nifty       | |    "
echo "    |    collection of tools - it might have been first created on       | |    "
echo "    |    a linux box. Then on a Mac. Now it is finally back on a         | |    "
echo "    |    Linux box, where it belongs -- I think.                         | |    "
echo "    |                                                                    | |    "
echo "    |    Now it recides on your Linux box. Hope you enjoy it.            | |    "
echo "    |____________________________________________________________________| |    "
echo "     \____________________________________________________________________\|    "
echo ""
echo "B. Back to Main Menu"
echo ""
read -p "Enter menu option: " -s -n1 answer

case "$answer" in
    [bB])
        exec ./settings.sh
        break
    ;;
    *)
        clear
        echo "Wrong option!"
        read -p "Press any key to continue... " -n1 -s
	esac

done
