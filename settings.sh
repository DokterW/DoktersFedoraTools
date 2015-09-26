#!/bin/bash

while :

do

name=$(sed -n "2p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
version=$(sed -n "4p" $HOME/.DoktersTools/DoktersFedoraTools.conf)

clear

echo -n "$name - v"
echo -n "$version"
echo " alpha"
echo ""
echo "- Settings Menu -"
echo ""
echo "1. Network  |  2.Backup  |  3.World Clock"
echo ""
# echo "5. Update Dokter's Tools"
# echo ""
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
		exec ./settingsnet.sh
		break
	;;
	2)
		clear
		exec ./settingsbu.sh
		break
	;;
	3)
		clear
		exec ./settingswc.sh
		break
		;;
	[bB])
		exec ./main.sh
		break
	;;
	*)
		clear
		echo "Wrong option!"
		read -p "Press any key to continue... " -n1 -s
esac

done
