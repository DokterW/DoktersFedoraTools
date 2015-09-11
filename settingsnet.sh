#!/bin/bash

while :

do

bcastip=$(cat $HOME/.DoktersTools/settings/net/broadcastip.txt)
bcastipx=$(cat $HOME/.DoktersTools/settings/net/broadcastipx.txt)
sship=$(cat $HOME/.DoktersTools/settings/net/sship.txt)
sshuser=$(cat $HOME/.DoktersTools/settings/net/sshuser.txt)
telnetip=$(cat $HOME/.DoktersTools/settings/net/telnetip.txt)
dldir=$(cat $HOME/.DoktersTools/settings/net/dldir.txt)
name=$(cat name.txt)
version=$(cat version.txt)

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
      echo "$bcastip" > $HOME/.DoktersTools/settings/net/broadcastip.txt
    ;;
#Secret Broadcast IP is for any other Broadcast IP, if you need it, when using a cafés free WiFi
    X)
      clear
      echo "Secret Broadcast IP..."
      echo ""
      read -p "Enter New Secret Broadcast IP: " bcastipx
      echo "$bcastipx" > $HOME/.DoktersTools/settings/net/broadcastipx.txt
    ;;
    x)
      clear
      echo "Secret Broadcast IP..."
      echo ""
      echo "Secret Broadcast IP: $bcastip"
      echo ""
      read -p "Press any key to continue... " -n1 -s
    ;;
    2)
        clear
        echo "SSH IP..."
        echo ""
        read -p "Enter New SSH IP: " sship
        echo "$sship" > $HOME/.DoktersTools/settings/net/sship.txt
    ;;
    3)
        clear
        echo "SSH IP..."
        echo ""
        read -p "Enter New SSH user: " sshuser
        echo "$sshuser" > $HOME/.DoktersTools/settings/net/sshuser.txt
    ;;
    4)
        clear
        echo "Telnet IP..."
        echo ""
        read -p "Enter New Telnet IP: " telnetip
        echo "$telnetip" > $HOME/.DoktersTools/settings/net/telnetip.txt
    ;;
    5)
        clear
        echo "Download location..."
        echo ""
        read -p "Enter New download location: $HOME/" dldir
        echo "$dldir" > $HOME/.DoktersTools/settings/net/dldir.txt
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
