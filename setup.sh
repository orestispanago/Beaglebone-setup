#!/bin/bash

IP_ADDRESS=""
NETMASK=""
GATEWAY=""
DNS_SEVERS="" # space separated

printf "Setting static IP address... "

ETHERNET_CABLE_ID=`connmanctl services | sed 's/.*  //'`
connmanctl config $ETHERNET_CABLE_ID --ipv4 manual $IP_ADDRESS $NETMASK $GATEWAY --nameservers $DNS_SEVERS
# systemctl restart networking

printf "OK\n"


printf "Activating incremental history search... "

echo '"\e[A": history-search-backward
"\e[B": history-search-forward
"\e[C": forward-char
"\e[D": backward-char' > ~/.inputrc

printf "OK\n"

/opt/scripts/tools/grow_partition.sh

printf "Rebooting...\n"

reboot