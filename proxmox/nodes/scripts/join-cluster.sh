#!/usr/bin/expect -f
set timeout -1
spawn pvecm add ##MAIN_NAT_IP##
expect -exact "Please enter superuser (root) password for '##MAIN_NAT_IP##': "
send -- "##MAIN_PASSWORD##\r"
expect "*Are you sure you want to continue connecting (yes/no)? "
send -- "yes\r"
interact