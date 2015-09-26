#!/bin/bash
# Dokter's Tools startup script
# Resize screen as it is fitted to 80x24 terminal (disbaled for now)
# resize -s 24 80 (disabled for now)
# Dependencies (that I remember): xbacklight, srm

clear

if [ -f "$HOME/.DoktersTools/DoktersFedoraTools.conf" ]
    then
    continue
elif [ -d "$HOME/.DoktersTools" ]
    then
    # 02
    echo "Name" > $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "Dokter's Fedora Tools" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 04
    echo "Version" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "0.8.0" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 06
    echo "Volume" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "30" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 08
    echo "Brightness" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "30" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 10
    echo "Backup Sources" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "ENTER SOURCES" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 12
    echo "Backup Location" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "Documents" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 14
    echo "Backup Name" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "Archive" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 16
    echo "Backup Date 1" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo " " >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 18
    echo "Backup Date 2" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo " " >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 20
    echo "Backup Date 3" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo " " >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 22
    echo "Broadcast IP" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "127.0.0.255" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 24
    echo "Broadcast IP X" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "127.0.0.255" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 26
    echo "SSH IP" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "127.0.0.1" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 28
    echo "SSH User" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "USER" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 30
    echo "Telnet IP" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "127.0.0.1" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 32
    echo "Download Location" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "Downloads" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 34
    echo "World Clock Name 1" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "Oslo" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 36
    echo "World Clock Location 1" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "Europe/Oslo" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 38
    echo "World Clock Name 2" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "London" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 40
    echo "World Clock Location 2" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "Europe/London" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 42
    echo "World Clock Name 3" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "New York City" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 44
    echo "World Clock Location 3" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "America/New_York" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 46
    echo "World Clock Name 4" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "Brisbane" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 48
    echo "World Clock Location 4" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "Australia/Brisbane" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
elif [ ! -d "$HOME/.DoktersTools" ]
    then
    mkdir $HOME/.DoktersTools
    # 02
    echo "Name" > $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "Dokter's Fedora Tools" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 04
    echo "Version" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "0.8.0" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 06
    echo "Volume" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "30" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 08
    echo "Brightness" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "30" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 10
    echo "Backup Sources" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "ENTER SOURCES" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 12
    echo "Backup Location" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "Documents" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 14
    echo "Backup Name" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "Archive" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 16
    echo "Backup Date 1" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo " " >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 18
    echo "Backup Date 2" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo " " >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 20
    echo "Backup Date 3" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo " " >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 22
    echo "Broadcast IP" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "127.0.0.255" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 24
    echo "Broadcast IP X" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "127.0.0.255" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 26
    echo "SSH IP" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "127.0.0.1" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 28
    echo "SSH User" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "USER" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 30
    echo "Telnet IP" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "127.0.0.1" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 32
    echo "Download Location" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "Downloads" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 34
    echo "World Clock Name 1" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "Oslo" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 36
    echo "World Clock Location 1" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "Europe/Oslo" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 38
    echo "World Clock Name 2" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "London" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 40
    echo "World Clock Location 2" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "Europe/London" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 42
    echo "World Clock Name 3" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "New York City" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 44
    echo "World Clock Location 3" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "America/New_York" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 46
    echo "World Clock Name 4" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "Brisbane" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    # 48
    echo "World Clock Location 4" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
    echo "Australia/Brisbane" >> $HOME/.DoktersTools/DoktersFedoraTools.conf
fi

while :

do

name=$(sed -n "2p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
version=$(sed -n "4p" $HOME/.DoktersTools/DoktersFedoraTools.conf)

echo ""
echo ""
echo ""
echo ""
echo "                 _____________________________________________"
echo "                |            $name            |\ "
echo "                |              By: Dr. Jimmy Wall             | |"
echo "                |           dokterstools@dokterw.me           | |"
echo "                |                                             | |"
echo "                |    A handy bash script for Fedora Linux.    | |"
echo "                |                                             | |"
echo "                |    Terminal window size should be 80x24.    | |"
echo "                |_____________________________________________| |"
echo "                 \_____________________________________________\|"
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
read -p "Press any key to load Dokter's Tools... " -s -n1

exec ./main.sh

done
