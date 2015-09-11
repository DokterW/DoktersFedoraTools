#!/bin/bash

blght=$(cat $HOME/.DoktersTools/settings/sys/backlight.txt)
snd=$(cat $HOME/.DoktersTools/settings/sys/sound.txt)
xbacklight -set $blght%
amixer -q sset 'Master' $snd%
ssid=$(nmcli dev wifi list | grep '* ' | grep -vw 'SSID'  | cut -c 4-10)
localip=$(hostname -I | cut -c 1-13)
externalip=$(dig myip.opendns.com @resolver1.opendns.com +short)
disk0=$(df -h | grep Filesystem | cut -c 1-12,25-90)
disk1=$(df -h | grep root | cut -c 13-24,24-90)
disk2=$(df -h | grep home | cut -c 13-24,24-90)
trash=$(du -sh ~/.local/share/Trash/files/ | cut -c 1-5)

# Possibly add IF for IP address

while :

do
    if [ "$blght" = -5 ]
        then
        echo 0 > $HOME/.DoktersTools/settings/sys/backlight.txt
        blght=$(cat $HOME/.DoktersTools/settings/sys/backlight.txt)
    elif [ "$blght" = 105 ]
        then
        echo 100 > $HOME/.DoktersTools/settings/sys/backlight.txt
        blght=$(cat $HOME/.DoktersTools/settings/sys/backlight.txt)
    elif [ "$snd" = -5 ]
        then
        echo 0 > $HOME/.DoktersTools/settings/sys/sound.txt
        snd=$(cat $HOME/.DoktersTools/settings/sys/sound.txt)
    elif [ "$snd" = 105 ]
        then
        echo 100 > $HOME/.DoktersTools/settings/sys/sound.txt
        snd=$(cat $HOME/.DoktersTools/settings/sys/sound.txt)
    fi

name=$(cat name.txt)
version=$(cat version.txt)
clear

echo -n "$name - v"
echo -n "$version"
echo " alpha"
echo ""
echo "- Main Menu -"
echo ""
echo "1. Network Tools  |  2. System & Disk Tools  |  3. World Clock  |  4. Settings"
echo ""
echo "--------------------------------------------------------------------------------"
echo ""
echo "[Backlight]       |   A. Up   |   Z. Down    |                  |  $blght%"
echo "[Volume]          |   S. Up   |   X. Down    |  M. Mute         |  $snd%"
echo ""
echo "       SSID: $ssid"
echo "   Local IP: $localip"
echo "External IP: $externalip"
echo ""
echo "$disk0"
echo "$disk1"
echo "$disk2"
echo "trash:       $trash"
echo ""
echo "U. Update SSID, IP & disk space info"
echo "Q. Quit"
echo ""
read -p "Enter menu option: " -s -n1 answer

case "$answer" in
    1)
        clear
        exec ./network.sh
        break
    ;;
    2)
        clear
        exec ./sysdisk.sh
        break
    ;;
    3)
        clear
        exec ./world.sh
        break
    ;;
    4)
        clear
        exec ./settings.sh
        break
    ;;
    [aA])
        blght=$((blght+5))
        echo $blght > $HOME/.DoktersTools/settings/sys/backlight.txt
        xbacklight -set $blght%
    ;;
    [zZ])
        blght=$((blght-5))
        echo $blght > $HOME/.DoktersTools/settings/sys/backlight.txt
        xbacklight -set $blght%
    ;;
    [sS])
        snd=$((snd+5))
        echo $snd > $HOME/.DoktersTools/settings/sys/sound.txt
        amixer -q sset 'Master' $snd%
    ;;
    [xX])
        snd=$((snd-5))
        echo $snd > $HOME/.DoktersTools/settings/sys/sound.txt
        amixer -q sset 'Master' $snd%
    ;;
    [mM])
        amixer -q sset 'Master' toggle
    ;;
    [uU])
        clear
        ssid=$(nmcli dev wifi list | grep '* ' | grep -vw 'SSID'  | cut -c 4-10)
        localip=$(hostname -I | cut -c 1-13)
        externalip=$(dig myip.opendns.com @resolver1.opendns.com +short)
        disk0=$(df -h | grep Filesystem | cut -c 1-12,37-90)
        disk1=$(df -h | grep root | cut -c 13-24,37-90)
        disk2=$(df -h | grep home | cut -c 13-24,37-90)
        trash=$(du -sh ~/.local/share/Trash/files/ | cut -c 1-5)
    ;;
    [qQ])
        cd ..
        clear
        echo -e "$name - v\c"
        echo -e "$version\c"
        echo " alpha"
        echo ""
        echo "Bye..."
        echo ""
        break
    ;;
    0)
        clear
        echo -e "$name - v\c"
        echo -e "$version\c"
        echo " alpha"
        echo ""
        echo "You found the easter egg!"
        echo "I know, not very exciting."
        echo "Although, some secret options aren't easter eggs."
        echo "Move along now."
        echo ""
        read -p "Press any key to continue... " -n1 -s
    ;;
    *)
        clear
        echo "Wrong option!"
        read -p "Press any key to continue... " -n1 -s
esac

done
