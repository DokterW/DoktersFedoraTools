#!/bin/bash

date "+%Y-%m-%d" > $HOME/.DoktersTools/settings/bu/budate.txt
budate=$(cat $HOME/.DoktersTools/settings/bu/budate.txt)
buff=$(cat $HOME/.DoktersTools/settings/bu/busrc.txt)
buloc=$(cat $HOME/.DoktersTools/settings/bu/buloc.txt)
buname=$(cat $HOME/.DoktersTools/settings/bu/buname.txt)
name=$(cat name.txt)
version=$(cat version.txt)

while :

do

budate1=$(cat $HOME/.DoktersTools/settings/bu/budate1.txt)
budate2=$(cat $HOME/.DoktersTools/settings/bu/budate2.txt)
budate3=$(cat $HOME/.DoktersTools/settings/bu/bydate3.txt)
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
            cat $HOME/.DoktersTools/settings/bu/budate2.txt > $HOME/.DoktersTools/settings/bu/budate3.txt
            mv $HOME/$buloc/$buname-bu-1-$budate1.tar.gz $HOME/$buloc/$buname-bu-2-$budate2.tar.gz
            cat $HOME/.DoktersTools/settings/bu/budate1.txt > $HOME/.DoktersTools/settings/bu/budate2.txt
            cat $HOME/.DoktersTools/settings/bu/budate.txt > $HOME/.DoktersTools/settings/bu/budate1.txt
            tar -cvpzf $HOME/$buloc/$buname-bu-1-$budate1.tar.gz $buff
        elif [ -f $HOME/$buloc/$buname-bu-1-$budate1.tar.gz ]
        then
            mv $HOME/$buloc/$buname-bu-1-$budate1.tar.gz $HOME/$buloc/$buname-bu-2-$budate2.tar.gz
            cat $HOME/.DoktersTools/cat settings/bu/budate1.txt > $HOME/.DoktersTools/settings/bu/budate2.txt
            cat $HOME/.DoktersTools/settings/bu/budate.txt > $HOME/.DoktersTools/settings/bu/budate1.txt
            tar -cvpzf $HOME/$buloc/$buname-bu-1-$budate1.tar.gz $buff
        else
            cat settings/bu/budate.txt > settings/bu/budate1.txt
            tar -cvpzf $HOME/$buloc/$buname-bu-1-$budate1.tar.gz $buff
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
