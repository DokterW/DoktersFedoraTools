#!/bin/bash

while :

do

wc1n=$(cat $HOME/.DoktersTools/settings/wc/wc1n.txt)
wc1z=$(cat $HOME/.DoktersTools/settings/wc/wc1z.txt)
wc2n=$(cat $HOME/.DoktersTools/settings/wc/wc2n.txt)
wc2z=$(cat $HOME/.DoktersTools/settings/wc/wc2z.txt)
wc3n=$(cat $HOME/.DoktersTools/settings/wc/wc3n.txt)
wc3z=$(cat $HOME/.DoktersTools/settings/wc/wc3z.txt)
wc4n=$(cat $HOME/.DoktersTools/settings/wc/wc4n.txt)
wc4z=$(cat $HOME/.DoktersTools/settings/wc/wc4z.txt)
name=$(cat name.txt)
version=$(cat version.txt)

clear

echo -n "$name - v"
echo -n "$version"
echo " alpha"
echo ""
echo "-World Clock Settings Menu -"
echo ""
echo "1. World Clock 1 Name  |  $wc1n"
echo "Q. World Clock 1 TZ    |  $wc1z"
echo "2. World Clock 2 Name  |  $wc2n"
echo "W. World Clock 2 TZ    |  $wc2z"
echo "3. World Clock 3 Name  |  $wc3n"
echo "E. World Clock 3 TZ    |  $wc3z"
echo "4. World Clock 4 Name  |  $wc4n"
echo "R. World Clock 4 TZ    |  $wc4z"
echo ""
echo "B. Back to Main Menu"
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
read -p "Enter menu option: " -s -n1 answer

case "$answer" in
    1)
        clear
        echo "World Clock 1 Name..."
        echo ""
        read -p "Enter New World Clock 1 Name: " wc1n
        echo "$wc1n" > $HOME/.DoktersTools/settings/wc/wc1n.txt
    ;;
    [qQ])
        clear
        echo "World Clock 1 TZ..."
        echo ""
        read -p "Enter New World Clock 1 TZ: " wc1z
        echo "$wc1z" > $HOME/.DoktersTools/settings/wc/wc1z.txt
    ;;
    2)
        clear
        echo "World Clock 2 Name..."
        echo ""
        read -p "Enter New World Clock 2 Name: " wc2n
        echo "$wc2n" > $HOME/.DoktersTools/settings/wc/wc2n.txt
    ;;
    [wW])
        clear
        echo "World Clock 2 TZ..."
        echo ""
        read -p "Enter New World Clock 2 TZ: " wc2z
        echo "$wc2z" > $HOME/.DoktersTools/settings/wc/wc2z.txt
    ;;
    3)
        clear
        echo "World Clock 3 Name..."
        echo ""
        read -p "Enter New World Clock 3 Name: " wc3n
        echo "$wc3n" > $HOME/.DoktersTools/settings/wc/wc3n.txt
    ;;
    [eE])
        clear
        echo "World Clock 3 TZ..."
        echo ""
        read -p "Enter New World Clock 3 TZ: " wc3z
        echo "$wc3z" > $HOME/.DoktersTools/settings/wc/wc3z.txt
    ;;
    4)
        clear
        echo "World Clock 4 Name..."
        echo ""
        read -p "Enter New World Clock 4 Name: " wc4n
        echo "$wc4n" > $HOME/.DoktersTools/settings/wc/wc4n.txt
    ;;
    [rR])
        clear
        echo "World Clock 4 TZ..."
        echo ""
        read -p "Enter New World Clock 4 TZ: " wc4z
        echo "$wc4z" > $HOME/.DoktersTools/settings/wc/wc4z.txt
    ;;
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
