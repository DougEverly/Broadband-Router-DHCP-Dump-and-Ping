#!/bin/sh

for i in `~/bin/get_dhcp.sh  | grep br0 | awk '{ print  $6  }' | sort`;
	do printf "%4s %s\n" `ping -c 1 -t 1 $i | grep from | wc -l | sed -e 's/0/-/g' | sed -e 's/1/OK/g'` $i;
done  | grep -v ping
