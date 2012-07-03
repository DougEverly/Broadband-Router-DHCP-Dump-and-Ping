#!/usr/bin/expect --
set username ADMIN_USERNAME
set password ADMIN_PASSWORD
spawn telnet 192.168.1.1
expect sername:
send $username\r
expect assword:
send $password\r
expect "Wireless Broadband Router"
send dhcps_lease_get\r
expect Returned
send exit\r
puts \r
