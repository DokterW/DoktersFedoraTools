#!/bin/bash

while :

do

bcastip=$(sed -n "22p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
bcastipx=$(sed -n "24p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
sship=$(sed -n "26p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
sshuser=$(sed -n "28p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
telnetip=$(sed -n "30p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
dldir=$(sed -n "32p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
name=$(sed -n "2p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
version=$(sed -n "4p" $HOME/.DoktersTools/DoktersFedoraTools.conf)

clear

echo -n "$name - v"
echo -n "$version"
echo " alpha"
echo ""
echo "- Network Tools -"
echo ""
echo "1. Local Network Scan   |  2. Ping Address    |  3. WhoIs Lookup"
echo "4. WiFi Scan            |  5. Connect to SSH  |  6. Connect to SSH [root]"
echo "7. Connect to Telnet    |  8. Download file"
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
echo ""
echo ""
echo ""
echo ""
echo ""
read -p "Enter menu option: " -s -n1 answer

case "$answer" in
    1)
        clear
        echo "— Local Network Scan —"
        echo ""
        ping -b -c 1 $bcastip | arp -a | grep -v incomplete
        echo ""
        read -p "Press any key to continue... " -n1 -s
    ;;
    [xX])
        clear
        echo "— Secret Local Network Scan —"
        echo ""
        ping -b -c 1 $bcastipx | arp -a | grep -v incomplete
        echo ""
        read -p "Press any key to continue... " -n1 -s
    ;;
    2)
        clear
        echo "Ping Address..."
        echo ""
        read -p "Enter address: " pingurl
        ping -c 1 $pingurl
        echo ""
        read -p "Press any key to continue... " -n1 -s
    ;;
    3)
        clear
        echo "WhoIs Lookup..."
        echo ""
        read -p "Enter address: " whoisurl
        whois $whoisurl | grep Registrant
	echo ""
        read -p "Press any key to continue... " -n1 -s
    ;;
    4)
        clear
        echo "— WiFi Scan —"
        echo ""
        nmcli dev wifi list
        echo ""
        read -p "Press any key to continue... " -n1 -s
    ;;
    5)
        clear
        echo "Connecting to SSH..."
        ssh $sshuser@$sship
        echo ""
        read -p "Press any key to continue... " -n1 -s
    ;;
    6)
        clear
        echo "Connecting to SSH [root]..."
        ssh root@$sship
        echo ""
        read -p "Press any key to continue... " -n1 -s
    ;;
    7)
        clear
        echo "Connecting to Telnet..."
        telnet $telnetip
        echo ""
        read -p "Press any key to continue... " -n1 -s
    ;;
    8)
        clear
        echo "Download file..."
        echo ""
        read -p "Enter address: " wgetfile
        wget $wgetfile -P $HOME/$dldir/
	echo ""
        read -p "Press any key to continue... " -n1 -s
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
