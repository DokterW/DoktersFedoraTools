#!/bin/bash

while :

do

wc1n=$(sed -n "34p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
wc1z=$(sed -n "36p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
wc2n=$(sed -n "38p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
wc2z=$(sed -n "40p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
wc3n=$(sed -n "42p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
wc3z=$(sed -n "44p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
wc4n=$(sed -n "46p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
wc4z=$(sed -n "48p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
name=$(sed -n "2p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
version=$(sed -n "4p" $HOME/.DoktersTools/DoktersFedoraTools.conf)

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
        sed -i "34c$wc1n" $HOME/.DoktersTools/DoktersFedoraTools.conf
    ;;
    [qQ])
        clear
        echo "World Clock 1 TZ..."
        echo ""
        read -p "Enter New World Clock 1 TZ: " wc1z
        sed -i "36c$wc1z" $HOME/.DoktersTools/DoktersFedoraTools.conf
    ;;
    2)
        clear
        echo "World Clock 2 Name..."
        echo ""
        read -p "Enter New World Clock 2 Name: " wc2n
        sed -i "38c$wc2n" $HOME/.DoktersTools/DoktersFedoraTools.conf
    ;;
    [wW])
        clear
        echo "World Clock 2 TZ..."
        echo ""
        read -p "Enter New World Clock 2 TZ: " wc2z
        sed -i "40c$wc2z" $HOME/.DoktersTools/DoktersFedoraTools.conf
    ;;
    3)
        clear
        echo "World Clock 3 Name..."
        echo ""
        read -p "Enter New World Clock 3 Name: " wc3n
        sed -i "42c$wc3n" $HOME/.DoktersTools/DoktersFedoraTools.conf
    ;;
    [eE])
        clear
        echo "World Clock 3 TZ..."
        echo ""
        read -p "Enter New World Clock 3 TZ: " wc3z
        sed -i "44c$wc3z" $HOME/.DoktersTools/DoktersFedoraTools.conf
    ;;
    4)
        clear
        echo "World Clock 4 Name..."
        echo ""
        read -p "Enter New World Clock 4 Name: " wc4n
        sed -i "46c$wc4n" $HOME/.DoktersTools/DoktersFedoraTools.conf
    ;;
    [rR])
        clear
        echo "World Clock 4 TZ..."
        echo ""
        read -p "Enter New World Clock 4 TZ: " wc4z
        sed -i "48c$wc4z" $HOME/.DoktersTools/DoktersFedoraTools.conf
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
