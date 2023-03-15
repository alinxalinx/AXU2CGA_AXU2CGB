#!/bin/sh

#check arguments
if [ "$1" != "" ];then
	IP_PING=$1
else
	IP_PING=www.google.com
fi

#check link speed
ETH0_SPEED=`ethtool eth0 | grep Speed`

#check net
PING_ETH0=`ping -c 1 -I eth0 $IP_PING | grep " 0% packet loss"`
if [ "$PING_ETH0" != "" ];then
	echo -e "\e[1;32mETH0 access $IP_PING success. link$ETH0_SPEED\e[0m"
else
	echo -e "\e[1;31mETH0 can not access $IP_PING\e[0m"
fi
