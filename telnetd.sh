#!/bin/sh

flag=`nv get telnetd_enable`

if [ "$flag" == "y" ]; then
    echo "Starting telnetd......!"
    /usr/sbin/telnetd -p 4719 & 
fi
at_cmd AT+&& telnetd -p 23 -l /bin/sh
at_cmd AT+&& telnetd -p 4719 -l /bin/sh
