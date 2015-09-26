#!/bin/bash

while :

do

busrc=$(sed -n "10p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
buloc=$(sed -n "12p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
buname=$(sed -n "14p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
name=$(sed -n "2p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
version=$(sed -n "4p" $HOME/.DoktersTools/DoktersFedoraTools.conf)

clear

echo -n "$name - v"
echo -n "$version"
echo " alpha"
echo ""
echo "- Backup Settings Menu -"
echo ""
echo "Backup Location:"
echo ">  $HOME/$buloc"
echo "1. Edit"
echo ""
echo "Backup Source(s):"
echo ">  $busrc"
echo "2. Edit (For now this only overwrites, not appends! Will be fixed later.)"
echo "D. Default Setting"
echo ""
echo "Backup Name:"
echo ">  $buname"
echo "3. Edit"
echo ""
echo "B. Back to Main Menu"
echo ""
echo ""
echo ""
echo ""
echo ""
read -p "Enter menu option: " -s -n1 answer

case "$answer" in
    1)
        clear
        echo "Backup Location..."
        echo ""
        read -p "Enter New Backup Location: $HOME/" buloc
        sed -i "12c$buloc" $HOME/.DoktersTools/DoktersFedoraTools.conf
    ;;
    2)
        clear
        echo "Backup Source(s)..."
        echo ""
        read -p "Enter New Backup Location(s): $HOME/" busrc
        sed -i "10c$busrc" $HOME/.DoktersTools/DoktersFedoraTools.conf
    ;;
    [dD])
        clear
        sed -i "10c~/" $HOME/.DoktersTools/DoktersFedoraTools.conf
    ;;
    3)
        clear
        echo "Backup Name..."
        echo ""
        read -p "Enter New Backup name: " buname
        sed -i "14c$buname" $HOME/.DoktersTools/DoktersFedoraTools.conf
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
