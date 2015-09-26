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
echo "- Network Settings Menu -"
echo ""
echo "1. Broadcast IP       |  $bcastip"
echo "2. SSH IP             |  $sship"
echo "3. SSH user           |  $sshuser"
echo "4. Telnet IP          |  $telnetip"
echo "5. Download location  |  $HOME/$dldir"
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
read -p "Enter menu option: " -s -n1 answer

case "$answer" in
    1)
      clear
      echo "Broadcast IP..."
      echo ""
      read -p "Enter New Broadcast IP: " bcastip
      sed -i "22c$bcastip" $HOME/.DoktersTools/DoktersFedoraTools.conf
    ;;
#Secret Broadcast IP is for any other Broadcast IP, if you need it, when using a cafés free WiFi
    X)
      clear
      echo "Secret Broadcast IP..."
      echo ""
      read -p "Enter New Secret Broadcast IP: " bcastipx
      sed -i "24c$bcastipx" $HOME/.DoktersTools/DoktersFedoraTools.conf
    ;;
    x)
      clear
      echo "Secret Broadcast IP..."
      echo ""
      echo "Secret Broadcast IP: $bcastipx"
      echo ""
      read -p "Press any key to continue... " -n1 -s
    ;;
    2)
        clear
        echo "SSH IP..."
        echo ""
        read -p "Enter New SSH IP: " sship
        sed -i "26c$sship" $HOME/.DoktersTools/DoktersFedoraTools.conf
    ;;
    3)
        clear
        echo "SSH IP..."
        echo ""
        read -p "Enter New SSH user: " sshuser
        sed -i "28c$sshuser" $HOME/.DoktersTools/DoktersFedoraTools.conf
    ;;
    4)
        clear
        echo "Telnet IP..."
        echo ""
        read -p "Enter New Telnet IP: " telnetip
        sed -i "30c$telnetip" $HOME/.DoktersTools/DoktersFedoraTools.conf
    ;;
    5)
        clear
        echo "Download location..."
        echo ""
        read -p "Enter New download location: $HOME/" dldir
        sed -i "32c$dldir" $HOME/.DoktersTools/DoktersFedoraTools.conf
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
