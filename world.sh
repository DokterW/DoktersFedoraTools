#!/bin/bash

while :

do

wc1n=$(sed -n "34p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
wc1z=$(sed -n "36p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
wc2n=$(sed -n "38p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
wc2z=$(sed -n "40p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
wc3n=$(sed -n "42p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
wc3z=$(sed -n "44p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
wc4n=$(sed -n "46p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
wc4z=$(sed -n "48p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
name=$(sed -n "2p" $HOME/.DoktersTools/DoktersFedoraTools.conf)
version=$(sed -n "4p" $HOME/.DoktersTools/DoktersFedoraTools.conf)

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
