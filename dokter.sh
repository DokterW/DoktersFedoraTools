#!/bin/bash
# Dokter's Tools startup script
# Resize screen as it is fitted to 80x24 terminal (disbaled for now)
# resize -s 24 80 (disabled for now)
# Dependencies (that I remember): xbacklight, srm

clear

if [ -d $HOME/.DoktersTools ]
    then
    continue
else
    mkdir $HOME/.DoktersTools
    mkdir $HOME/.DoktersTools/settings
    mkdir $HOME/.DoktersTools/settings/bu
    mkdir $HOME/.DoktersTools/settings/net
    mkdir $HOME/.DoktersTools/settings/sys
    mkdir $HOME/.DoktersTools/settings/wc
    touch $HOME/.DoktersTools/settings/bu/budate.txt
    touch $HOME/.DoktersTools/settings/bu/budate1.txt
    touch $HOME/.DoktersTools/settings/bu/budate2.txt
    touch $HOME/.DoktersTools/settings/bu/budate3.txt
    echo "ENTER SOURCES" > $HOME/.DoktersTools/settings/bu/busrc.txt
    echo "Documents" > $HOME/.DoktersTools/settings/bu/buloc.txt
    echo "Archive" > $HOME/.DoktersTools/settings/bu/buname.txt
    echo "127.0.0.255" > $HOME/.DoktersTools/settings/net/broadcastip.txt
    echo "127.0.0.255" > $HOME/.DoktersTools/settings/net/broadcastipx.txt
    echo "Downloads" > $HOME/.DoktersTools/settings/net/dldir.txt
    echo "127.0.0.1" > $HOME/.DoktersTools/settings/net/sship.txt
    echo "USER" > $HOME/.DoktersTools/settings/net/sshuser.txt
    echo "127.0.0.1" > $HOME/.DoktersTools/settings/net/telnetip.txt
    echo "30" > $HOME/.DoktersTools/settings/sys/backlight.txt
    echo "30" > $HOME/.DoktersTools/settings/sys/sound.txt
    echo "Oslo" > $HOME/.DoktersTools/settings/wc/wc1n.txt
    echo "Europe/Oslo" > $HOME/.DoktersTools/settings/wc/wc1z.txt
    echo "London" > $HOME/.DoktersTools/settings/wc/wc2n.txt
    echo "Europe/London" > $HOME/.DoktersTools/settings/wc/wc2z.txt
    echo "New York City" > $HOME/.DoktersTools/settings/wc/wc3n.txt
    echo "America/New_York" > $HOME/.DoktersTools/settings/wc/wc3z.txt
    echo "Brisbane" > $HOME/.DoktersTools/settings/wc/wc4n.txt
    echo "Australia/Brisbane" > $HOME/.DoktersTools/settings/wc/wc4z.txt
fi

while :

do

name=$(cat name.txt)
version=$(cat version.txt)

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
