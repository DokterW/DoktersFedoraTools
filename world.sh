#!/bin/bash

while :

do

wc1n=$(cat $HOME/.DoktersTools/settings/wc/wc1n.txt)
wc1z=$(cat $HOME/.DoktersTools/settings/wc/wc1z.txt)
wc2n=$(cat $HOME/.DoktersTools/settings/wc/wc2n.txt)
wc2z=$(cat $HOME/.DoktersTools/settings/wc/wc2z.txt)
wc3n=$(cat $HOME/.DoktersTools/settings/wc/wc3n.txt)
wc3z=$(cat $HOME/.DoktersTools/settings/wc/wc3z.txt)
wc4n=$(cat $HOME/.DoktersTools/settings/wc/wc4n.txt)
wc4z=$(cat $HOME/.DoktersTools/settings/wc/wc4z.txt)
name=$(cat name.txt)
version=$(cat version.txt)

clear

echo -n "$name - v"
echo -n "$version"
echo " alpha"
echo ""
echo "- World Clock -"
echo ""
echo "— Local —"
date "+Date: %Y-%m-%d  |  Time: %H:%M:%S %p"
echo ""
echo "— $wc1n —"
TZ=$wc1z date "+Date: %Y-%m-%d  |  Time: %H:%M:%S %p"
echo ""
echo "— $wc2n —"
TZ=$wc2z date "+Date: %Y-%m-%d  |  Time: %H:%M:%S %p"
echo ""
echo "— $wc3n —"
TZ=$wc3z date "+Date: %Y-%m-%d  |  Time: %H:%M:%S %p"
echo ""
echo "— $wc4n —"
TZ=$wc4z date "+Date: %Y-%m-%d  |  Time: %H:%M:%S %p"
echo ""
echo "U. Update"
echo ""
echo "B. Back to Main Menu"
echo ""
read -p "Enter menu option: " -s -n1 answer

case "$answer" in
    [uU])
        clear
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
