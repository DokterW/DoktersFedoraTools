#!/bin/bash

budate=$(date "+%Y-%m-%d")
busrc=$(sed -n "10p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
buloc=$(sed -n "12p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
buname=$(sed -n "14p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
name=$(sed -n "2p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
version=$(sed -n "4p" $HOME/.DoktersTools/DoktersFedoraTools.conf)

while :

do

budate1=$(sed -n "16p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
budate2=$(sed -n "18p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
budate3=$(sed -n "20p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
trash=$(du -sh ~/.local/share/Trash/files/ | cut -c 1-5)

clear

echo -n "$name - v"
echo -n "$version"
echo " alpha"
echo ""
echo "- System Tools -"
echo ""
echo "1. Uptime  |  2. Process Status  |  3. Find PID  |  4. Kill"
# echo "5. Resize Terminal window to 80x24"
echo ""
echo "- Disk Tools -"
echo ""
echo "5. Disk space  |  6. Empty Trash  |  7. Empty Trash [Secure]"
echo "8. List Trash  |  $trash"
echo ""
echo "- Backup Tools -"
echo ""
echo "9. Back up files"
echo ""
echo "B. Back to Main Menu"
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
        echo "— Uptime —"
        echo ""
        uptime
        echo ""
        read -p "Press any key to continue... " -n1 -s
    ;;
    2)
        clear
        echo "— Process Status —"
        echo ""
        top
        echo ""
        read -p "Press any key to continue... " -n1 -s
    ;;
    3)
        clear
        echo "Find PID..."
        echo ""
        read -p "Enter name of process: " swpid
        ps -C $swpid -o pid= | cut -c 2-
        echo ""
        read -p "Press any key to continue... " -n1 -s
    ;;
    4)
        clear
        echo "Kill..."
        echo ""
        read -p "Enter PID: " killpid
        kill $killpid
        echo ""
        read -p "Press any key to continue... " -n1 -s
    ;;
    5)
        clear
        echo "— Disk space —"
        df -h | grep Filesystem | cut -c 1-20,34-90
        df -h | grep root | cut -c 1-20,34-90
        df -h | grep home | cut -c 1-20,34-90
        echo ""
        read -p "Press any key to continue... " -n1 -s
    ;;
    6)
        clear
        echo "Emptying Trash..."
        rm -rfv ~/.local/share/Trash/files/*
        echo ""
        read -p "Press any key to continue... " -n1 -s
    ;;
    7)
        clear
        echo "Emptying Trash [Secure]..."
        srm -rfv ~/.local/share/Trash/files/*
        echo ""
        read -p "Press any key to continue... " -n1 -s
    ;;
    8)
        clear
        echo "Listing content..."
        ls -a ~/.local/share/Trash/files/
        echo ""
        read -p "Press any key to continue... " -n1 -s
    ;;
    9)
        clear
        echo "Starting backup..."
        if [ -f $HOME/$buloc/$buname-bu-2-$budate2.tar.gz ]
        then
            mv $HOME/$buloc/$buname-bu-2-$budate2.tar.gz $HOME/$buloc/$buname-bu-3-$budate3.tar.gz
            budate3=$($budate2)
            sed -i "20c$budate3" $HOME/.DoktersTools/DoktersFedoraTools.conf
            mv $HOME/$buloc/$buname-bu-1-$budate1.tar.gz $HOME/$buloc/$buname-bu-2-$budate2.tar.gz
            budate2=$($budate1)
            sed -i "18c$budate2" $HOME/.DoktersTools/DoktersFedoraTools.conf
            budate1=$($budate)
            sed -i "16c$budate1" $HOME/.DoktersTools/DoktersFedoraTools.conf
            tar -cvpzf $HOME/$buloc/$buname-bu-1-$budate1.tar.gz $busrc
        elif [ -f $HOME/$buloc/$buname-bu-1-$budate1.tar.gz ]
        then
            mv $HOME/$buloc/$buname-bu-1-$budate1.tar.gz $HOME/$buloc/$buname-bu-2-$budate2.tar.gz
            budate2=$($budate1)
            sed -i "18c$budate2" $HOME/.DoktersTools/DoktersFedoraTools.conf
            budate1=$($budate)
            sed -i "16c$budate1" $HOME/.DoktersTools/DoktersFedoraTools.conf
            tar -cvpzf $HOME/$buloc/$buname-bu-1-$budate1.tar.gz $busrc
        else
            budate1=$($budate)
            sed -i "16c$budate1" $HOME/.DoktersTools/DoktersFedoraTools.conf
            tar -cvpzf $HOME/$buloc/$buname-bu-1-$budate1.tar.gz $busrc
        fi
        echo "Backup done!"
        echo ""
        read -p "Press any key to continue... " -n1 -s
    ;;
#    5)
#        clear
#        resize -s 24 80
#    ;;
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
