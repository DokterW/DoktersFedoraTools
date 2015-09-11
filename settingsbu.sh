#!/bin/bash

while :

do

busrc=$(cat $HOME/.DoktersTools/settings/bu/busrc.txt)
buloc=$(cat $HOME/.DoktersTools/settings/bu/buloc.txt)
buname=$(cat $HOME/.DoktersTools/settings/bu/buname.txt)
name=$(cat name.txt)
version=$(cat version.txt)

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
echo "Backup Files & Folders:"
echo ">  $busrc"
echo "2. Edit"
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
echo ""
read -p "Enter menu option: " -s -n1 answer

case "$answer" in
    1)
        clear
        echo "Backup Location..."
        echo ""
        read -p "Enter New Backup Location: $HOME/" buloc
        echo "$buloc" > $HOME/.DoktersTools/settings/bu/buloc.txt
    ;;
    2)
        clear
        echo "Backup Files & Folder..."
        echo ""
        vim $HOME/.DoktersTools/settings/bu/busrc.txt
#        read -p "Enter New Backup Files & Folders: " busrc
#        echo "$busrc" > settings/bu/buff.txt
    ;;
    2)
        clear
        echo "Backup Name..."
        echo ""
        read -p "Enter New Backup name: " buname
        echo "$buname" > $HOME/.DoktersTools/settings/bu/buname.txt
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
